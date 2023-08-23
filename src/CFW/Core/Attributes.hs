module CFW.Core.Attributes where

import           Data.Map.Strict (Map (..), empty)
import           Data.Text       (Text)

data AttributeType
  = Text
  | Int
  | Float
  | Dict
  deriving (Eq)

data AttributeValue
  = AttrStr Text
  | AttrInt Int
  | AttrFloat Float
  | AttrDict AttributeMap
  deriving (Eq)

newtype AttributeDefMap =
  AttributeDefMap (Map Text AttributeType)
  deriving (Eq)

emptyAttributeDefMap :: AttributeDefMap
emptyAttributeDefMap = AttributeDefMap empty

newtype AttributeMap =
  AttributeMap (Map Text AttributeValue)
  deriving (Eq)

emptyAttributeMap :: AttributeMap
emptyAttributeMap = AttributeMap empty
