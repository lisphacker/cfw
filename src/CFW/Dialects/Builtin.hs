module CFW.Dialects.Builtin where

import           CFW.Core.Attributes  (emptyAttributeMapDef)
import           CFW.Core.Constraints (Constraint (..),
                                       SameOperandsAndResultsType (..))
import           CFW.Core.Dialect     (Dialect (..))
import           CFW.Core.OpDef       (OpDef (..))
import           CFW.Core.TypeDef     (TypeDef, anyTensorType)
import           Data.Text            (Text)

mkBinTensorOp :: Text -> OpDef
mkBinTensorOp name =
  OpDef
    name
    [anyTensorType, anyTensorType]
    emptyAttributeMapDef
    [anyTensorType]
    [Constraint SameOperandsAndResultsType]

ops :: [OpDef]
ops =
  [ mkBinTensorOp "add"
  , mkBinTensorOp "sub"
  , mkBinTensorOp "mul"
  , mkBinTensorOp "div"
  , mkBinTensorOp "pow"
  ]

arithDialect :: Dialect
arithDialect = Dialect "arith" ops
