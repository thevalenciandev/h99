removeAt :: Int -> [a] -> (a,[a])
removeAt k xs = removehelper (k-1) xs []
  where removehelper _ [] _ = error ("No element at index " ++ show k)
        removehelper k (x:xs) ys
          | k == 0    = (x,ys++xs)
          | otherwise = removehelper (k-1) xs (ys++[x])
