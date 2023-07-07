module Main where

import Prelude

import Effect (Effect)
import Effect.Class.Console (logShow)
import FFI.FFI (goAdd, goLog)

main :: Effect Unit
main = do
  logShow $ goAdd 1 2
  goLog "test"
