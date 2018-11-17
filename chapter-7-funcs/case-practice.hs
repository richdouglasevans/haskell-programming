module CasePractice where

functionC :: Ord p => p -> p -> p
functionC x y = if x > y then x else y

functionC' :: Ord p => p -> p -> p
functionC' x y = case x > y of
    True -> x
    False -> y

ifEvenAdd2 :: Integral x => x -> x
ifEvenAdd2 n = if even n then n + 2 else n

ifEvenAdd2' :: Integral x => x -> x
ifEvenAdd2' n = case even n of
    True -> n + 2
    False -> n

nums :: Integral x => x -> x
nums x = case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0
