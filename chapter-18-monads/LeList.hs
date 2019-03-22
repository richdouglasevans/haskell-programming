module LeList where

isEven :: Integer -> Bool
isEven x = x `mod` 2 == 0

isOdd :: Integer -> Bool
isOdd = not . isEven

explode :: [Integer] -> [Integer]
explode = explodeWhen isEven

explodeWhen :: (Integer -> Bool) -> [Integer] -> [Integer]
explodeWhen condition xs = do
    x <- xs
    if condition x then [x, x] else return x

main :: IO ()
main = print $ explodeWhen isOdd [0..3]
