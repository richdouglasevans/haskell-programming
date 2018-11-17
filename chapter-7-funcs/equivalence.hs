module Ch7Equivalence where

ternary x y z = x * y * z
ternary' = \x -> \y -> \z -> x * y * z
