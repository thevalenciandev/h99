removeAt :: Int -> [a] -> (Maybe a,[a])
removeAt k xs = removehelper (k-1) xs []
  where removehelper _ [] ys = (Nothing, ys)
        removehelper k (x:xs) ys
          | k == 0    = (Just x,ys++xs)
          | otherwise = removehelper (k-1) xs (ys++[x])
