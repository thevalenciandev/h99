length' :: [a] -> Int
length' = foldl (\acc _ -> acc+1) 0
