module CFW.Core.Type where

import CFW.Core.Shape (Shape)

class IsTypeDef t where
  isScalar :: t -> Bool
  shape :: t -> Shape
  isIntegral :: t -> Bool
  isFloating :: t -> Bool
  bitSize :: t -> Int

data TypeDef =
  forall t. IsTypeDef t =>
            TypeDef t
