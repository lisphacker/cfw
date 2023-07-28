module CFW.Core.Op where

import           CFW.Core.OpDef (OpDef)

data Op =
  Op
    { opDef     :: OpDef
    , opParams  :: [Type]
    , opAttrs   :: AttributeMap
    , opResults :: [Type]
    }
  deriving (Eq)
