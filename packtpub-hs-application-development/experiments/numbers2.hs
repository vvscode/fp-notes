readInts :: String -> [Int]
readInts s = let ws = words s in map read ws

minMax :: Ord a => [a] -> Maybe (a, a)
minMax (h : t) = Just $ foldr
    (\x (minVal, maxVal) -> (if x < minVal then x else minVal, if x > maxVal then x else maxVal))
    (h, h)
    t
minMax _ = Nothing

main :: IO ()
main = do
    content <- readFile "numbers.txt"
    let values = readInts content
        count = length values
        total = sum values
        mean = fromIntegral total / fromIntegral count
        range = minMax values
    print count
    print total
    print mean
    print range
