module Smooth where

import Data.Monoid

data Optional a =
    Nada
    | Only a
    deriving (Eq, Show)

instance Monoid a => Monoid (Optional a) where
    mempty = Nada

instance Semigroup a => Semigroup (Optional a) where
    (Only x) <> (Only y) = Only $ x <> y
    _ <> (Only x) = Only x
    (Only x) <> _ = Only x
    _ <> _ = Nada

main :: IO ()
main = print $ Only (Sum 3) <> Only (Sum 1)
