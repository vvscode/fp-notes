module Functions where

import Prelude
import Data.Array (null)
import Data.List ((:), List(..), reverse)
import Data.Array.Partial (tail)
import Partial.Unsafe (unsafePartial)

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

-- Break up Expressions into Cases in PureScript 
-- using Simple Pattern Matching
nonSense :: Int -> Int -> Int
nonSense n 0 = 0
nonSense n _ = n

whoIsGreater :: Int -> Int -> Int
whoIsGreater n m | n > m = n
                 | otherwise = m

isEmpty :: forall a. Array a -> Boolean
isEmpty [] = true
isEmpty _ = false

-- Types Alias and Instances in PureScript
type PersonRec = { name:: String
                  ,age:: Int
                }
data Person = PersonA PersonRec
instance  showPerson :: Show Person where
  show (PersonA {name, age}) = "PersonA ({ name:"<> show name
    <> ", age: " <> show age <> "})"
whoAmI :: String -> Int -> Person
whoAmI name age = PersonA { name, age }

-- Recursion in Purescript
fact:: Int -> Int
fact 0 = 1
fact n = n * fact (n -1)

-- Creating your own length function using recursion in Purescript
length :: forall a. Array a -> Int
-- length arr = 
--   if null arr
--   then 0
--   else 1 + length(unsafePartial tail arr)
length [] = 0
length arr = 1 + length (unsafePartial tail arr)

-- Aglebraic data type in PS and show instance
data Vehicle
  = Car Wheels
  | Motorcycle Wheels
  | Skateboard Wheels
  | Bicycle Wheels
  
data Wheels = Wheels Int

instance showWheels' :: Show Wheels where
  show = showWheels
  
instance showVehicle' :: Show Vehicle where
  show = showVehicle
  
myVehicle :: Vehicle
myVehicle = Car (Wheels 6)

showVehicle :: Vehicle -> String
showVehicle (Car a) = "Vehicle: Car, " <> show a
showVehicle (Motorcycle a) = "Vehicle: Motorcycle, " <> show a
showVehicle (Skateboard a) = "Vehicle: Skateboard, " <> show a
showVehicle (Bicycle a) = "Vehicle: Bicycle, " <> show a

showWheels :: Wheels -> String
showWheels (Wheels a) = "Wheels: " <> show a

-- Lists and Infix operators in PureScript
myIntList :: List Int
myIntList = (Cons 1 (Cons 2 (Cons 3 Nil)))

-- Functor and map in PureScript
-- map' :: forall a b. (a-> b) -> List a -> List b
map' _ Nil = Nil 
map' f (x : xs) = f x : map' f xs

mapIdList :: List Int 
-- https://github.com/purescript/purescript-prelude/issues/122
mapIdList = map (identity) myIntList

mapCompList :: List Int
mapCompList = map ((\a -> a + 2) <<< (\a -> a + 1)) myIntList

mapCompList' :: List Int
mapCompList' = (map (_ + 2) <<< map (_ + 1)) myIntList

-- Filter in PureScript
filter' :: forall a. (a -> Boolean) -> List a -> List a
filter' p l = go Nil l
  -- go (Nil) (1 : 2 : Nil)
  where
  go acc Nil = reverse acc
  -- go (Nil : 1) Nil = reverse (Nil :1) = (1 :Nil)
  go acc (x : xs)
  -- x = (2), xs = (Nil)
    | p x = go (x : acc) xs
    -- (2 < 2) = go (1 : Nil) (2 : Nil)
    | otherwise = go acc xs
    -- go (Nil : 1) (Nil)