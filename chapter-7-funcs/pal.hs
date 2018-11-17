pal :: Eq a => [a] -> Bool
pal xs
    | xs == reverse xs = True
    | otherwise = False
