module CFW.Core.Op where

import           CFW.Core.Attributes (AttributeMap)
import           CFW.Core.OpDef      (OpDef)
import           CFW.Core.Value      (Value)

data Op =
  Op
    { opDef     :: OpDef
    , opParams  :: [Value]
    , opAttrs   :: AttributeMap
    , opResults :: [Value]
    }
  deriving (Eq)
