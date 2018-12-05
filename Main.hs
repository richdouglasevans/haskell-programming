module Main where

import Cipher(caesar)

main :: IO ()
main = putStrLn $ caesar 1 "abc"
