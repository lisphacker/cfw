module CFW.Core.TypeDef where

data PrimitiveType
  = Integer Bool Int
  | Floating Int
  deriving (Eq)

data TypeDef
  = ScalarTypeDef [PrimitiveType]
  | TensorTypeDef [PrimitiveType] (Maybe Int)
  deriving (Eq)

anyScalarType :: TypeDef
anyScalarType = ScalarTypeDef []

anyTensorType :: TypeDef
anyTensorType = TensorTypeDef [] Nothing

rankedTensorType :: Int -> TypeDef
rankedTensorType r = TensorTypeDef [] (Just r)

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
