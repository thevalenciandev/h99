split :: [a] -> Int -> ([a], [a])
split xs n = go xs [] n
    where go [] ys n = (ys, [])
          go (x:xs) ys n
              | n > 0     = go xs (ys++[x]) (n-1)
              | otherwise = (ys, x:xs)
