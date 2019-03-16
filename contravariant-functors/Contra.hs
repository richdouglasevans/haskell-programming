module Contra where

import Data.Functor.Contravariant

isOdd :: Int -> Bool
isOdd x = (x `mod` 2) /= 0

main :: IO ()
-- main = print $ getPredicate (Predicate isOdd) 2
main = print
    $ getPredicate
    (contramap length $ Predicate isOdd)
    [1,2]
