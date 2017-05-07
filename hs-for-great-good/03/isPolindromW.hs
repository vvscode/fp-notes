slice from to xs = take (to - from + 1) (drop from xs)

isPolindromW::[Char] -> Bool
isPolindromW [] = True
isPolindromW [x] = True
isPolindromW xs = if (fst == lst) then (isPolindromW newXs) else False
  where 
        fst = head xs
        lst = last xs
        newXs = slice 1 ((length xs) - 2) xs

      