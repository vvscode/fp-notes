-- https://www.hackerrank.com/challenges/eval-ex
import           Control.Applicative
import           Control.Monad
import           System.IO

fact x = if x > 1 then x * fact (x - 1) else 1

exprPart x n
    | n == 0 = 1
    | n == 1 = x
    | otherwise = (x ** n) / fact n
evalExpr x = foldl (+) 0 $ map (exprPart x) [0..9]

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    forM_ [1..n] $ \a0  -> do
        x_temp <- getLine
        let x = read x_temp :: Double
        putStrLn $ show $ evalExpr x


getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do
        x <- getLine
        xs <- getMultipleLines (n-1)
        let ret = (x:xs)
        return ret
