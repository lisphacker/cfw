module CFW.Core.Constraints where

import           CFW.Core.Attributes (AttributeMap)
import           CFW.Core.Type       (sameType)
import           CFW.Core.Value      (Value (valueType), valuesSameType)

class IsConstraint c where
  verifyConstraint :: c -> [Value] -> AttributeMap -> [Value] -> Bool

data Constraint =
  forall c. IsConstraint c =>
            Constraint c

data SameOperandsAndResultsType =
  SameOperandsAndResultsType

instance IsConstraint SameOperandsAndResultsType where
  verifyConstraint SameOperandsAndResultsType [] _ [] = True
  verifyConstraint SameOperandsAndResultsType params _ [] =
    sameType $ map valueType params
  verifyConstraint SameOperandsAndResultsType [] _ results =
    sameType $ map valueType results
  verifyConstraint SameOperandsAndResultsType params _ results =
    sameType $ map valueType $ results ++ params
