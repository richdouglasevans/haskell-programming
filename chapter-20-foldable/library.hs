module Foldy where

-- import Data.Monoid
-- import Data.Foldable

sum' :: (Foldable t, Num a) => t a -> a
sum' = foldr (+) 0

product' :: (Foldable t, Num a) => t a -> a
product' = foldr (*) 1

elem' :: (Foldable t, Eq a) => a -> t a -> Bool
elem' a = foldr present False
    where present a' found = not found && a == a'

minimum' :: (Foldable t, Ord a) => t a -> a
minimum' t =

-- minimum' :: (Foldable t, Ord a) => t a -> Maybe a
-- minimum' xs
--     | null xs   = Nothing
--     | otherwise t = Nothing
--         where
-- minimum' xs = foldr lessThan Nothing
--     where lessThan a' found = not found && a == a'

main :: IO ()
main = print "Oh hai"
