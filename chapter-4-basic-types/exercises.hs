module Exercises where

isPalindrome :: String -> String -> Bool
isPalindrome a b = a == reverse b

myAbs :: Integer -> Integer
myAbs x = if x < 0 then x * (-1) else x
