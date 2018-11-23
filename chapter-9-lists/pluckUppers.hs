module PluckUppers where

import Data.Char (isUpper)

pluckUppers :: String -> String
pluckUppers = filter isUpper
