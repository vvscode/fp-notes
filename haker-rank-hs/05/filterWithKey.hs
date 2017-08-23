-- https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list?h_r=next-challenge&h_v=zen

f :: [Int] -> [Int]
-- http://umairsaeed.com/blog/2015/05/16/index-based-list-operations-using-folds-in-haskell/
f lst = map snd $ filter (\x -> even $ fst x)  (zip [0..] lst)

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
