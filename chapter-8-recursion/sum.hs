sumOf :: (Eq a, Num a) => a -> a
sumOf 0 = 0
sumOf x = x + sumOf(x - 1)
