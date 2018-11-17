module Print3 where

myGreeting = "Hello," ++ " " ++ "World!"

hello = "Hello,"

world = "World!"

main = do
    putStrLn myGreeting
    putStrLn greets
    where greets = hello <> " " <> world
