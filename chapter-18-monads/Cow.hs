module Cow where

data Cow = Cow {
    name   :: String
  , age    :: Int
  , weight :: Int
} deriving (Eq, Show)

noEmpty :: String -> Maybe String
noEmpty "" = Nothing
noEmpty st = Just st

default' :: String -> Maybe String
default' = return

noNegative :: Int -> Maybe Int
noNegative n
    | n >= 0    = Just n
    | otherwise = Nothing

-- if Cow's name is Bess, must be under 500
weightCheck :: Cow -> Maybe Cow
weightCheck cow =
    if name cow == "Bess" && weight cow > 499
        then Nothing
        else Just cow

-- make a Cow using do notation
makeCow :: String -> Int -> Int -> Maybe Cow
makeCow name' age' weight' = do
    leName <- noEmpty name'
    leAge <- noNegative age'
    leWeight <- noNegative weight'
    weightCheck $ Cow leName leAge leWeight

-- make a Cow using >>=
makeCow' :: String -> Int -> Int -> Maybe Cow
makeCow' name' age' weight' =
    noEmpty name' >>= \leName ->
        noNegative age' >>= \leAge ->
            noNegative weight' >>= \leWeight ->
                weightCheck $ Cow leName leAge leWeight

main :: IO ()
main = print $ makeCow' "Bess" 25 499
