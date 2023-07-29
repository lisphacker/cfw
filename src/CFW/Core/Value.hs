module CFW.Core.Value where

import           CFW.Core.Type (Type)
import           Data.Text     (Text)

data Value =
  Value
    { valueName :: Text
    , valueType :: Type
    }
  deriving (Eq)

valuesSameType :: [Value] -> Bool
valuesSameType []     = True
valuesSameType [v]    = True
valuesSameType (v:vs) = all ((== valueType v) . valueType) vs
