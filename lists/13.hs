data Element a = Single a | Multiple Int a deriving Show

encodeDirect :: Eq a => [a] -> [Element a]
encodeDirect []     = []
encodeDirect (x:xs) = let (e,ys) = encodehelper 1 x xs
                      in e : encodeDirect ys

encodehelper :: Eq a => Int -> a -> [a] -> (Element a, [a])
encodehelper n c [] = (mkElement n c, [])
encodehelper n c (x:xs)
    | c == x    = encodehelper (1+n) c xs
    | otherwise = (mkElement n c, x:xs)

mkElement :: Int -> a -> Element a
mkElement n c = if n == 1 then Single c else Multiple n c

