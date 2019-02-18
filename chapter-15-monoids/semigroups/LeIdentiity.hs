import Test.QuickCheck

newtype Identity a = Identity a

instance Semigroup a => Semigroup (Identity a) where
    (Identity x) <> (Identity y) = Identity $ x <> y

instance Eq a => Eq (Identity a) where
    Identity x == Identity y = x == y

semigroupAssoc :: (Eq m, Semigroup m)
    => m -> m -> m -> Bool
semigroupAssoc a b c =
    (a <> (b <> c)) == ((a <> b) <> c)

type IdentityAssoc =
    Identity String -> Identity String -> Identity String -> Bool

generateAnIdentity :: Arbitrary a => Gen (Identity a)
generateAnIdentity = Identity <$> arbitrary

instance Arbitrary a => Arbitrary (Identity a) where
    arbitrary = generateAnIdentity

instance (Show a) => Show (Identity a) where
    show (Identity a) = "Identity " ++ show a

main :: IO ()
main = quickCheck (semigroupAssoc :: IdentityAssoc)
