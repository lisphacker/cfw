module CFW.Core.OpDef where

import           CFW.Core.Attributes  (AttributeMapDef)
import           CFW.Core.Constraints (Constraint)
import           CFW.Core.Type        (Type)
import           CFW.Core.TypeDef     (TypeDef)
import           Control.Arrow        ((&&&))
import           Data.Function        (on)
import           Data.Text            (Text)

data OpDef =
  OpDef
    { opDefName        :: Text
    , opDefParams      :: [TypeDef]
    , opDefAttrs       :: AttributeMapDef
    , opDefResults     :: [TypeDef]
    , opDefConstraints :: [Constraint]
    }

instance Eq OpDef where
  o1 == o2 =
    opDefName o1 == opDefName o2 &&
    opDefParams o1 == opDefParams o2 &&
    opDefAttrs o1 == opDefAttrs o2 && opDefResults o1 == opDefResults o2
