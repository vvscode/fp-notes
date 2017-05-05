-- Recursive search max value in list
maxInList [] = 0
maxInList [x] = x
maxInList (x:xs) = max x (maxInList xs)