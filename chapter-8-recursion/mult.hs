multOf :: (Integral a) => a -> a -> a
multOf _ 0 = 0
multOf x times = x + multOf x (times - 1)
