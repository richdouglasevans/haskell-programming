dodgy :: Num x => x -> x -> x
dodgy x y = x + y * 10

oneIsOne :: Num x => x -> x
oneIsOne = dodgy 1

oneIsTwo :: Num x => x -> x
oneIsTwo = flip dodgy 2
