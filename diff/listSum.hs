-- Recursive sum for list
listSum [] = 0
listSum (x:xs) = x + (listSum xs)