module CFW.Core.OpDef where

import           CFW.Core.Attributes  (AttributeMap)
import           CFW.Core.Constraints (Constraint)
import           CFW.Core.Type        (TypeDef)
import           Data.Text            (Text)

data OpDef =
  OpDef
    { opDefName        :: Text
    , opDefParams      :: [TypeDef]
    , opDefAttrs       :: AttributeMap
    , opDefResults     :: [TypeDef]
    , opDefConstraints :: [Constraint]
    }
  deriving (Eq)
