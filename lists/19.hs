rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs 0 = xs
rotate xs n
    | n > 0 = let shift = n `mod` length xs 
              in drop shift xs ++ take shift xs
    | n < 0 = let n' = abs n
                  shift = n' `mod` length xs
                  l = length xs
              in take l (drop (l-shift) xs) ++ take (l-shift) xs
