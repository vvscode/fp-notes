-- Реализуйте функцию isPalindrome, которая определяет,
-- является ли переданный ей список палиндромом.

-- GHCi> isPalindrome "saippuakivikauppias"
-- True
-- GHCi> isPalindrome [1]
-- True
-- GHCi> isPalindrome [1, 2]
-- False

isPalindrome :: Eq a => [a] -> Bool
isPalindrome list
  | length list <= 1 = True
  | not $ null xs = (x == last xs) && isPalindrome (take (length xs - 1) xs)
  where (x:xs) = list
