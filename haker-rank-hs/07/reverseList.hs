-- https://www.hackerrank.com/challenges/fp-reverse-a-list?h_r=next-challenge&h_v=zen

rev' (x:xs) = if null xs then [x] else rev' xs ++ [x]
rev = rev'
