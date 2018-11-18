module Mc91 where

mc91 :: Integral x => x -> x
mc91 x
    | x > 100 = x - 10
    | otherwise = 91
