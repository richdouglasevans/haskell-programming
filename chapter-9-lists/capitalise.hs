module Capitalise where

import Data.Char (toUpper)

capitalise :: String -> String
capitalise [] = []
capitalise (x:xs) = toUpper x : xs

capitalise' :: String -> String
capitalise' [] = []
capitalise' (x:xs) = toUpper x : capitalise' xs
-- capitalise' = map toUpper

capitaliseHead :: String -> Char
capitaliseHead s = toUpper (head s)

capitaliseHead' :: String -> Char
capitaliseHead' = toUpper . head
