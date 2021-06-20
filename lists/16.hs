dropEvery :: [a] -> Int -> [a]
dropEvery xs n 
    | length xs < n = xs
    | otherwise     = let (front,back) = splitAt n xs
                      in  (init front) ++ dropEvery back n
