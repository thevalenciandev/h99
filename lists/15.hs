repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n
    | n <= 0    = []
    | otherwise = [x | _ <- [1..n]] ++ repli xs n

repli' :: [a] -> Int -> [a]
repli' xs n = xs >>= replicate n 
