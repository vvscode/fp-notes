module Functions where

import Prelude

-- addMe (a -> ( b -> (a + b)))
addMe :: Int -> Int -> Int
-- addMe x y = x + y
addMe = \a -> \b -> a + b

-- addFive (b -> (a +b))
addFive :: Int -> Int
addFive = addMe 5


data Foo = Foo1 | Bar String

runFoo :: Foo -> String
runFoo Foo1 = "Damn right it's Foo"
runFoo (Bar s) = "Yeah it's Bar and " <> s