last' :: [a] -> a
last' []     = error "empty list"
last' [x]    = x
last' (_:xs) = last' xs
