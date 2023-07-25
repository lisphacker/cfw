module CFW.Core.OpDef where

import           CFW.Core.Attributes  (AttributeMap)
import           CFW.Core.Constraints (Constraint)
import           Data.Text            (Text)
import CFW.Core.Type (TypeDef)


class IsOpDef od where
  opDefName :: od -> Text
  opDefParams :: od -> [TypeDef]
  opDefAttrs :: od -> AttributeMap
  opDefResuts :: od -> [TypeDef]
  opDefConstraints :: od -> [Constraint]

data OpDef = forall t. IsOpDef t => OpDef t
