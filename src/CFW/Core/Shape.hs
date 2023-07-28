module CFW.Core.Shape where

import           Data.Int    (Int64)
import           Data.Tree   (flatten)
import           Data.Vector (Vector, fromList, singleton)
import           GHC.Arr     (numElements)

newtype Shape =
  Shape (Vector Int64)
  deriving (Eq)

scalarShape :: Shape
scalarShape = Shape mempty

tensorShape :: [Int64] -> Shape
tensorShape = Shape . fromList

isScalarShape :: Shape -> Bool
isScalarShape (Shape v) = v == mempty

flatten :: Shape -> Shape
flatten (Shape v) = Shape $ singleton $ product v

numElements :: Shape -> Int64
numElements (Shape v) = product v
