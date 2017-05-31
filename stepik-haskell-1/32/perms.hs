-- Воспользовавшись функциями map и concatMap, определите функцию perms,
-- которая возвращает все перестановки,
-- которые можно получить из данного списка, в любом порядке.
-- GHCi> perms [1,2,3]
-- [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
-- Считайте, что все элементы в списке уникальны, и что для пустого списка имеется одна перестановка.
perms :: [a] -> [[a]]
perms []     = [[]]
perms [x]    = [[x]]
perms (x:xs) = ins x `concatMap` perms xs
  where
    ins :: a -> [a] -> [[a]]
    ins x y = map (\p -> (take p y) ++ [x] ++ (drop p y)) [0..(length y)]
