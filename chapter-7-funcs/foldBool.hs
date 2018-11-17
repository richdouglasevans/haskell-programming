module FoldBool where

foldBoolPatternMatch :: a -> a -> Bool -> a
foldBoolPatternMatch x _ True  = x
foldBoolPatternMatch _ y False = y

foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y z = case z of
    True  -> x
    False -> y

foldBoolGuards :: a -> a -> Bool -> a
foldBoolGuards x y z
    | z = x
    | otherwise = y
