insertAt :: a -> [a] -> Int -> [a]
insertAt x xs n = let (ys,zs) = splitAt (n-1) xs in ys++x:zs

