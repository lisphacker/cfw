module CFW.Core.Attributes where

import           Data.Map.Strict (Map (..))
import           Data.Text       (Text)

data AttributeValue
  = AttrStr Text
  | AttrInt Int
  | AttrFloat Float
  | AttrDict AttributeMap
  deriving (Eq)

newtype AttributeMap =
  AttributeMap (Map Text AttributeValue)
  deriving (Eq)
