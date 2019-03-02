module ListTieFighter where

data List a =
    Nil
  | Cons a (List a)
  deriving (Eq, Show)

instance Functor List where
    fmap = undefined

instance Applicative List where
    pure = undefined
    (<*>) = undefined

main :: IO ()
main = print "Aw yeah!"
