module CFW.Dialects.Builtin where

import           CFW.Core.Attributes  (emptyAttributeDefMap)
import           CFW.Core.Constraints (Constraint (..),
                                       SameOperandsAndResultsType (..))
import           CFW.Core.OpDef       (OpDef (..), ParameterDef (ParameterDef),
                                       ResultDef (ResultDef))
import           CFW.Core.TypeDef     (TypeDef, anyScalarType)
import           Data.Map.Strict      (fromList)
import           Data.Text            (Text)

mkBinTensorOp :: Text -> OpDef
mkBinTensorOp name =
  OpDef
    name
    [ParameterDef "lhs" anyScalarType, ParameterDef "rhs" anyScalarType]
    emptyAttributeDefMap
    [ResultDef "result" anyScalarType]
    [Constraint SameOperandsAndResultsType]
    []

ops :: [OpDef]
ops =
  [ mkBinTensorOp "add"
  , mkBinTensorOp "sub"
  , mkBinTensorOp "mul"
  , mkBinTensorOp "div"
  , mkBinTensorOp "pow"
  ]
