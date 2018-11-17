module Gee where

g :: (a -> b) -> (a, c) -> (b, c)
g f p = (b, c)
    where a = fst p
          b = f a
          c = snd p
