import Data.List

data Element a = Single a | Multiple Int a deriving Show

encodeModified :: Eq a => [a] -> [Element a]
encodeModified = map toElement . group
  where toElement xs = let l = length xs 
                       in if l == 1 then Single (head xs) else Multiple l (head xs)
