module CFW.Core.TypeDef where

data PrimitiveType
  = Integer Bool Int
  | Floating Int
  deriving (Eq)

data TypeDef
  = ScalarTypeDef [PrimitiveType]
  | TensorTypeDef [PrimitiveType] (Maybe Int)
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

allPrimitiveTypes :: [PrimitiveType]
allPrimitiveTypes =
  [ui1, ui8, ui16, ui32, ui64, si8, si16, si32, si64, f8, f16, f32, f64]

allIntegerTypes :: [PrimitiveType]
allIntegerTypes = filter isInteger allPrimitiveTypes
  where
    isInteger (Integer _ _) = True
    isInteger _             = False

allFloatingTypes :: [PrimitiveType]
allFloatingTypes = filter isFloating allPrimitiveTypes
  where
    isFloating (Floating _) = True
    isFloating _            = False

anyScalarType :: TypeDef
anyScalarType = ScalarTypeDef allPrimitiveTypes

anyTensorType :: TypeDef
anyTensorType = TensorTypeDef allPrimitiveTypes Nothing

rankedTensorType :: Int -> TypeDef
rankedTensorType r = TensorTypeDef allPrimitiveTypes (Just r)
