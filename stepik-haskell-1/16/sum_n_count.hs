-- Реализуйте функцию, находящую сумму и количество цифр 
-- десятичной записи заданного целого числа.

-- sum'n'count :: Integer -> (Integer, Integer)
-- sum'n'count x = undefined
-- GHCi> sum'n'count (-39)
-- (12,2)

import Data.Char

sumNcount x =
  let
    absX = if x > 0 then x else -x
    strX = show absX
    numOfDigits = length strX
    sumOfDigits = sum $ map digitToInt strX
  in
    (sumOfDigits, numOfDigits)