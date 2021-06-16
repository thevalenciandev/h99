import Data.List

encode :: Eq a => [a] -> [(Int, a)]
encode = map (\all@(x:_) -> (length all, x)) . group
