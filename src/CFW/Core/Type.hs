module CFW.Core.Type where

import           CFW.Core.Shape   (Shape, scalarShape)
import           CFW.Core.TypeDef (PrimitiveType (..), TypeDef (..))

class IsType t where
  isScalar :: t -> Bool
  rank :: t -> Int
  shape :: t -> Shape
  isIntegral :: t -> Bool
  isFloating :: t -> Bool
  bitSize :: t -> Int

data Type
  = ScalarType PrimitiveType
  | TensorType PrimitiveType Int Shape
  deriving (Eq)

instance IsType Type where
  isScalar (ScalarType _)  = True
  isScalar (TensorType {}) = True
  rank (ScalarType _)     = 0
  rank (TensorType _ r _) = r
  shape (ScalarType _)     = scalarShape
  shape (TensorType _ _ s) = s
  isIntegral (ScalarType (Integer _ _))     = True
  isIntegral (ScalarType (Floating _))      = False
  isIntegral (TensorType (Integer _ _) _ _) = True
  isIntegral (TensorType (Floating _) _ _)  = False
  isFloating = not . isIntegral
  bitSize (ScalarType (Integer _ b))     = b
  bitSize (ScalarType (Floating b))      = b
  bitSize (TensorType (Integer _ b) _ _) = b
  bitSize (TensorType (Floating b) _ _)  = b
