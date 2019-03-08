module Lebind where

import Control.Monad (join)

-- join :: Monad m => m (m a) -> m a

bind :: Monad m => (a -> m b) -> m a -> m b
bind f m = join $ fmap f m

main :: IO ()
main = print $ bind f [1..3]
    where f = return . (+1)
