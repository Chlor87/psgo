module Main where

import Prelude

import Data.Maybe (isJust, isNothing)
import Effect (Effect)
import Effect.Class.Console (logShow)
import FFI.FFI (goAdd, goLog, maybeA)

main :: Effect Unit
main = do
  logShow $ goAdd 1 2
  goLog "test"
  let m = maybeA "test"
  goLog $ show $ m
  goLog $ isJust m
  goLog $ isNothing m
