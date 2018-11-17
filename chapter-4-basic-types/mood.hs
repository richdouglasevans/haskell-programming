module Mood where

data Mood = Woot | Meh deriving Show;

changeMood :: Mood -> Mood
changeMood Meh  = Woot
changeMood Woot = Meh
