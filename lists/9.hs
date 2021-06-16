import Data.List

pack :: Eq a => [a] -> [[a]]
pack = group

pack' :: Eq a => [a] -> [[a]]
pack' [] = []
pack' (x:xs) = let (ys,zs) = span (==x) xs
               in  (x:ys) : pack' zs
