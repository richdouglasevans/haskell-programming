module Cipher(
    caesar,
    uncaesar
) where

import Data.Char(chr, ord)

-- [(caesar (-27) "a", uncaesar (-27) "z"), (caesar 1 "abc", uncaesar 1 "bcd")]

caesar :: Int -> String -> String
caesar step = map $ mutatio step

uncaesar :: Int -> String -> String
uncaesar step = map $ oitatum step

mutatio :: Int -> Char -> Char
mutatio step c = letter
    where offset = ord 'a'                -- grab the offset of 'a' (1st letter)
          c' = ord c - offset             -- the offset of the letter to be stepped
                                          --     applying the offset of the first letter
          norm = flip mod 26              -- "fit" everything into the range of the alphabet
          step' = norm step               -- find the step in the range 0-25
          stepped = norm (c' + step')     -- bump the offset letter by n steps
          letter = chr (stepped + offset) -- convert the ciphered letter back to a character
                                          --     un-applying the offset of the first letter

oitatum :: Int -> Char -> Char
oitatum step = mutatio (step * (-1))
