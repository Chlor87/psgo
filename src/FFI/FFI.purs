module FFI.FFI where

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Prelude (Unit)

foreign import goAdd :: Int -> Int -> Int

foreign import goLog :: forall a. a -> Effect Unit

foreign import maybeAImpl
  :: (String -> Maybe String)
  -> (Maybe String)
  -> String
  -> Maybe String

maybeA :: String -> Maybe String
maybeA = maybeAImpl Just Nothing