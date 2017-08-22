-- https://www.hackerrank.com/challenges/fp-filter-array?h_r=next-challenge&h_v=zen
f :: Int -> [Int] -> [Int]
-- correct, but better avoid anonymous functions
-- f n arr = filter (\x -> x < n) arr
f n arr = filter (< n) arr

-- The Input/Output section. You do not need to change or modify this part
main = do
    n <- readLn :: IO Int
    inputdata <- getContents
    let
        numbers = map read (lines inputdata) :: [Int]
    putStrLn . unlines $ (map show . f n) numbers
