penultimate :: [a] -> a
penultimate []  = error "empty list"
penultimate [x] = error "singleton list"
penultimate [x,_]  = x
penultimate (_:xs) = penultimate xs
