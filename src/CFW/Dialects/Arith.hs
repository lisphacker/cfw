module CFW.Dialects.Builtin where

import           CFW.Core.Attributes  (emptyAttributeDefMap)
import           CFW.Core.Constraints (Constraint (..),
                                       SameOperandsAndResultsType (..))
import           CFW.Core.OpDef       (OpDef (..), OpDefTrait (Commutative),
                                       ParameterDef (ParameterDef),
                                       ResultDef (ResultDef))
import           CFW.Core.TypeDef     (TypeDef, anyScalarType)
import           Data.Map.Strict      (fromList)
import           Data.Text            (Text)

mkBinaryScalarOp :: Text -> OpDef
mkBinaryScalarOp name =
  OpDef
    name
    [ParameterDef "lhs" anyScalarType, ParameterDef "rhs" anyScalarType]
    emptyAttributeDefMap
    [ResultDef "result" anyScalarType]
    [Constraint SameOperandsAndResultsType]
    [Commutative]

ops :: [OpDef]
ops =
  [ mkBinaryScalarOp "add"
  , mkBinaryScalarOp "sub"
  , mkBinaryScalarOp "mul"
  , mkBinaryScalarOp "div"
  , mkBinaryScalarOp "pow"
  ]
