-- https://www.hackerrank.com/challenges/area-under-curves-and-volume-of-revolving-a-curv
import Text.Printf (printf)

-- Area Under Curves and Volume of Revolving a Curve
-- Compute the area under polynomial curve
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve leftLimit rightLimit aList bList = map ((/ fromIntegral freq) . sum) [vals, map (circleArea) vals]
  where 
    -- define number of iterations
    freq = 1000 :: Int
    -- generate list of point for range
    tRange = floatingRange freq leftLimit rightLimit
    vals = map (functionValue) tRange
    
    floatingRange :: (Integral a, Fractional b) => a -> a -> a -> [b]
    -- floatingRange 1000 3 4
    -- [3000...4000] -> double -> (/1000) -> [3, 3.01, 3.02 ... 4 ]
    floatingRange fr leftLimit rightLimit = map (/(fromIntegral fr)) $ map fromIntegral $ [leftLimit*fr..rightLimit*fr]
    
    circleArea :: Floating a => a -> a
    circleArea a = pi * (a ** 2)
        
    functionValue :: Floating a => a -> a
    functionValue xPoint = sum . zipWith (*) aFl . map (xPoint**) $ bFl
      where aFl = map fromIntegral aList
            bFl = map fromIntegral bList


--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve leftLimit rightLimit a b). map (map read. words). lines