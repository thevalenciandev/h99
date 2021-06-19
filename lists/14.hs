dupli :: [a] -> [a]
dupli = foldr (\x xs -> x:x:xs) []
