module CFW.Dialects.Builtin where

-- import           CFW.Core.Dialect
-- import           CFW.Core.OpDef
import           CFW.Core.Shape   (Shape(..), isScalarShape, scalarShape)
import           CFW.Core.Type    (IsTypeDef (..), TypeDef(..))
import GHC.Num (Integer(IN))

data PrimitiveType = Integer Bool Int | Floating Int
  deriving (Eq)

ui1 = Integer False 1
ui8 = Integer False 8
ui16 = Integer False 16
ui32 = Integer False 32
ui64 = Integer False 64
si8 = Integer True 8
si16 = Integer True 16
si32 = Integer True 32
si64 = Integer True 64
f8 = Floating 8
f16 = Floating 16
f32 = Floating 32
f64 = Floating 64


data Type = PrimitiveType
          | TensorType { rank :: Int, primitiveType :: PrimitiveType }
  deriving (Eq)

-- instance IsTypeDef PrimitiveType where
--   isScalar _ = True

--   shape _ = scalarShape

--   isIntegral (Integer _ _) = True
--   isIntegral (Floating _)  = False

--   isFloating = not . isIntegral
  
--   bitSize (Integer _ bits) = bits
--   bitSize (Floating bits)  = bits


-- data TensorType =
--   TensorType
--     { shape_        :: Shape
--     , primitiveType :: PrimitiveType
--     }

-- instance IsTypeDef TensorType where
--   isScalar tt = isScalarShape (shape_ tt)

--   shape = shape_

--   isIntegral = isIntegral . primitiveType
  
--   isFloating = isFloating . primitiveType

--   bitSize = bitSize . primitiveType

-- data ElementwiseBinaryOpCode = Add | Sub | Mul | Div | Mod | Pow
-- data ElementwiseBinaryOp = ElementwiseBinaryOp ElementwiseBinaryOpCode TypeDef TypeDef TypeDef

-- -- type TensorTypeDef = TypeDef (TensorType Shape PrimitiveType)

-- ops = 
--   [
--     ElementwiseBinaryOp Add (TypeDef ui1) (TypeDef ui1) (TypeDef ui1)
--   ]