module CFW.Dialects.Tosa where

import           CFW.Core.Attributes  (emptyAttributeDefMap)
import           CFW.Core.Constraints (Constraint (..),
                                       SameOperandsAndResultsType (SameOperandsAndResultsType))
import           CFW.Core.OpDef       (OpDef (..), OpDefTrait (Commutative),
                                       ParameterDef (ParameterDef),
                                       ResultDef (ResultDef))
import           CFW.Core.TypeDef     (anyTensorType)
import           Data.Text            (Text)

mkBinaryTensorOp :: Text -> OpDef
mkBinaryTensorOp name =
  OpDef
    name
    [ParameterDef "lhs" anyTensorType, ParameterDef "rhs" anyTensorType]
    emptyAttributeDefMap
    [ResultDef "result" anyTensorType]
    [Constraint SameOperandsAndResultsType]
    [Commutative]

ops :: [OpDef]
ops =
  [ mkBinaryTensorOp "add"
  , mkBinaryTensorOp "sub"
  , mkBinaryTensorOp "mul"
  , mkBinaryTensorOp "div"
  , mkBinaryTensorOp "pow"
  ]
