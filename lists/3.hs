elemAt :: Int -> [a] -> a
elemAt k
    | k <= 0    = error "Index too low"
    | otherwise = snd . head . dropWhile (\(i,_) -> i/=k) . zip [1..]
