-- https://www.hackerrank.com/challenges/fp-sum-of-odd-elements

f = foldl (+) 0 $ filter odd



-- This part handles the Input/Output and can be used as it is. Do not change or modify it.
main = do
   inputdata <- getContents
   putStrLn $ show $ f $ map (read :: String -> Int) $ lines inputdata
