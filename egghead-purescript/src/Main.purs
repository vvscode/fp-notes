module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

import Functions

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

