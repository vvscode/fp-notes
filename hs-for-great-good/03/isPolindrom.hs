slice from to xs = take (to - from + 1) (drop from xs)

isPolindrom::[Char] -> Bool
isPolindrom [] = True
isPolindrom [x] = True
isPolindrom xs =
    let fst = head xs
        lst = last xs
        newXs = slice 1 ((length xs) - 2) xs
    in if (fst == lst)
    then (isPolindrom newXs)
    else False

      