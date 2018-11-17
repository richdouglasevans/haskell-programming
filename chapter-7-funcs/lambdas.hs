module Ch7Lambdas where

addOne :: Integer -> Integer
addOne x = x + 1

addOneSection :: Integer -> Integer
addOneSection = (+) 1

addOneLambda :: Integer -> Integer
addOneLambda = \x -> x + 1

addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = addOneLambda
