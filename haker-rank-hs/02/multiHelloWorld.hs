import           Control.Applicative
import           Control.Monad
import           System.IO

repeatLine lineToPrint num = do
  if num > 0 then do {
    putStrLn lineToPrint
    ; repeatLine lineToPrint (num - 1) }
  else return ()

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    --  Print "Hello World" on a new line 'n' times.
    repeatLine "Hello World" n

getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do
        x <- getLine
        xs <- getMultipleLines (n-1)
        let ret = (x:xs)
        return ret
