module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

import Functions

logShow x = log $ show $ x

main :: Effect Unit
main = do
  log "Hello sailor!"

  log ""
  log "addMe 5 6"
  log $ show $ addMe 5 6
  
  log ""
  log "addFive 4"
  log $ show $ addFive 4

  log ""
  log "runFoo (Bar \"his buddy\")"
  log $ show $ runFoo (Bar "his buddy")

  -- Break up Expressions into Cases in PureScript 
  -- using Simple Pattern Matching
  log $ show $ nonSense 12 0
  log $ show $ nonSense 15 14

  log $ show $ whoIsGreater 12 44

  log $ show $ isEmpty []
  log $ show $ isEmpty [1, 2]

  -- Types Alias and Instances in PureScript
  log $ show $ whoAmI "Vasiliy" 18

  -- Recursion in Purescript
  log $ show $ fact 10

  -- Creating your own length function using recursion in Purescript
  log $ show $ length [1, 2]

  -- Aglebraic data type in PS and show instance
  -- log $ showWheels  (Wheels 4)
  -- log $ (Wheels 4)
  log $ show $ myVehicle
  log $ show $ (Wheels 4)

  -- Lists and Infix operators in PureScript
  log $ show $ myIntList
  log $ show $ map' (\a -> a + 1) myIntList
  log $ show $ map (\a -> a + 1) [1, 2, 3]
  log $ show $ mapIdList

  logShow $ mapCompList
  logShow $ mapCompList'

  -- Filter in PureScript
  logShow $ filter' (_ <= 2) myIntList