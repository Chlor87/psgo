module FFI.FFI where

import Prelude (Unit)
import Effect (Effect)

foreign import goAdd :: Int -> Int -> Int

foreign import goLog :: forall a. a -> Effect Unit