-- Реализуйте функцию, находящую значение определённого интеграла
--  от заданной функции ff на заданном интервале [a,b][a,b] методом трапеций. 
--  (Используйте равномерную сетку; достаточно 1000 элементарных отрезков.)

-- integration :: (Double -> Double) -> Double -> Double -> Double
-- integration f a b = undefined
-- GHCi> integration sin pi 0
-- -2.0
-- Результат может отличаться от -2.0, но не более чем на 1e-4.

-- integration :: (Double -> Double) -> Double -> Double -> Double
-- integration f a b =
--   let
--     segmentsCount = 3
--     top = max a b
--     bottom = min a b
--     segmentSize = abs (a - b) / segmentsCount
--     segmentSquare ls rs = (*) segmentSize $ (/2) $ (f ls) + (f rs)
--     helper i acc ls rs
--         | i == segmentsCount = acc
--         | otherwise = helper (i + 1) (acc + segmentSquare ls rs) (ls + segmentSize) (rs + segmentSize)
--   in helper 0 0 bottom (bottom + segmentSize)

-- Решение Кирилла, по моему, более логично
integration f a b = 
  let 
    stepCounts = 1000
    height = (/stepCounts) $ b - a
    helper acc f a h n 
      | n == stepCounts = acc
      | otherwise = helper (acc + f (a + n * h)) f a h (n + 1)
  in height * ((f a + f b)/2 + helper 0 f a height 1)