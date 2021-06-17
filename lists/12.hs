data Element a = Single a | Multiple Int a deriving Show

decodeModified :: Eq a => [Element a] -> [a]
decodeModified = concat . map decode
    where decode (Single y)     = [y]
          decode (Multiple n y) = replicate n y

