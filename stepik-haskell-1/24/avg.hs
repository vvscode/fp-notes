-- Напишите функцию с сигнатурой:

-- avg :: Int -> Int -> Int -> Double
-- вычисляющую среднее значение переданных в нее аргументов:

-- GHCi> avg 3 4 8
-- 5.0

-- avg a b c = (/3) $ (+) a (+) b c
avg x y z = (/3) $ fromIntegral x + fromIntegral y + fromIntegral z :: Double

