numbers :: (Ord p, Num p, Num y) => p -> y
numbers x
    | x < 0 = -1
    | x == 0 = 0
    | x > 0 = 1
    -- | otherwise = 7
