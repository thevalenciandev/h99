elemAt :: Int -> [a] -> a
elemAt k
    | k <= 0    = error "Index too low"
    | otherwise = head . drop (k-1)
