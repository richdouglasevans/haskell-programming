module ExercisesForChapter7 where

tens :: Integral a => a -> a
tens x = snd $ mod10 $ fst $ mod10 x
    where mod10 = flip divMod 10

tens' :: Integral a => a -> a
tens' x = d
    where xLast = x `div` 10
          d = xLast `mod` 10

hundreds :: Integral a => a -> a
hundreds x = snd $ mod10 $ fst $ mod10 $ fst $ mod10 x
    where mod10 = flip divMod 10
