module CFW.Core.Attributes where

import Data.Text (Text)
import Data.Map.Strict (Map(..))

data AttributeValue = AttrStr Text | AttrInt Int | AttrFloat Float | AttrDict AttributeMap
newtype AttributeMap = AttributeMap (Map Text AttributeValue)