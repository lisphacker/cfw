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

newtype AttributeMapDef =
  AttributeMapDef (Map Text AttributeType)
  deriving (Eq)

emptyAttributeMapDef :: AttributeMapDef
emptyAttributeMapDef = AttributeMapDef empty

newtype AttributeMap =
  AttributeMap (Map Text AttributeValue)
  deriving (Eq)

emptyAttributeMap :: AttributeMap
emptyAttributeMap = AttributeMap empty
