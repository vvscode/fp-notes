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