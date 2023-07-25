module CFW.Core.Constraints where

import CFW.Core.Value (Value)
import CFW.Core.Attributes (AttributeMap)

class IsConstraint c where
  verifyConstraint :: c -> [Value] -> AttributeMap -> [Value] -> Bool

data Constraint = forall c. IsConstraint c => Constraint c