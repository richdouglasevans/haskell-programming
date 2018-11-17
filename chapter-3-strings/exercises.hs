module Exercises where

exclaim :: String -> String
exclaim s = s ++ "!"
-- exclaim = flip (++) "!"

fifth :: String -> Char
fifth s = s !! 4
-- fifth = flip (!!) 4

rvrs :: String -> String
rvrs s = concat [
    take 7 $ drop 9 s,
    take 4 $ drop 5 s,
    take 5 s
    ]

main = print $ rvrs "Curry is awesome"
