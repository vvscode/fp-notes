-- Реализуйте функцию nTimes, которая возвращает список,
-- состоящий из повторяющихся значений ее первого аргумента.
-- Количество повторов определяется значением второго аргумента этой функции.

-- GHCi> nTimes 42 3
-- [42,42,42]
-- GHCi> nTimes 'z' 5
-- "zzzzz"

nTimes = helper []
  where
    helper list value counter
      | counter <= 0 = list
      | otherwise = helper (value:list) value $ counter - 1
