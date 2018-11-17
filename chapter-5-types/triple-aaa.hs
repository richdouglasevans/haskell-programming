{-# LANGUAGE NoMonomorphismRestriction #-}

module TripleAAA where

aaa :: a -> a -> a
-- aaa a _ = a
aaa _ a = a

example = 1

x = 5
y = x + 5
z y = y * 10

bigNum = (^) 5 2
-- wahoo = bigNum 10
