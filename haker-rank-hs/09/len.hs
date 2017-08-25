-- https://www.hackerrank.com/challenges/fp-list-length?h_r=next-challenge&h_v=zen

--Only fill up the blanks for the function named len
--Do not modify the structure of the template in any other way
len :: [a] -> Int
len lst
    | null lst = 0
    | otherwise = 1 + len (tail lst)
