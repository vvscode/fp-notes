module Functions where

import Prelude

-- addMe (a -> ( b -> (a + b)))
addMe :: Int -> Int -> Int
-- addMe x y = x + y
addMe = \a -> \b -> a + b

-- addFive (b -> (a +b))
addFive :: Int -> Int
addFive = addMe 5