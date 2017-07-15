-- https://www.hackerrank.com/challenges/fp-list-replication

repeatItem num item = if num == 0 then [] else [item] ++ repeatItem (num - 1) item;

repeatList :: Int -> [Int] -> [Int]
repeatList _ []       = []
repeatList num (x:xs) = repeatItem num x ++ repeatList num xs

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> repeatList n arr). map read. words

