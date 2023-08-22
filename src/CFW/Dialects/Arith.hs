module CFW.Dialects.Builtin where

import           CFW.Core.Attributes  (emptyAttributeDefMap)
import           CFW.Core.Constraints (Constraint (..),
                                       SameOperandsAndResultsType (..))
import           CFW.Core.OpDef       (OpDef (..),
                                       ParameterDefMap (ParameterDefMap),
                                       ParameterName (ParameterName),
                                       ResultDefMap (ResultDefMap),
                                       ResultName (ResultName))
import           CFW.Core.TypeDef     (TypeDef, anyTensorType)
import           Data.Map.Strict      (fromList)
import           Data.Text            (Text)

mkBinTensorOp :: Text -> OpDef
mkBinTensorOp name =
  OpDef
    name
    (ParameterDefMap $
     fromList
       [(ParameterName "x", anyTensorType), (ParameterName "x1", anyTensorType)])
    emptyAttributeDefMap
    (ResultDefMap $ fromList [(ResultName "out", anyTensorType)])
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
