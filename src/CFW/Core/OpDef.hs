module CFW.Core.OpDef where

import           CFW.Core.Attributes  (AttributeDefMap)
import           CFW.Core.Constraints (Constraint)
import           CFW.Core.Type        (Type)
import           CFW.Core.TypeDef     (TypeDef)
import           Data.Map.Strict      (Map)
import           Data.Text            (Text)

data RegionType
  = GenericRegion
  | SingleBlockRegion
  | GraphRegion

data OpDefProperty
  = HasRegions [RegionType]
  | IsolatedFromAbove

newtype ParameterName =
  ParameterName Text
  deriving (Eq)

newtype ParameterDefMap =
  ParameterDefMap (Map ParameterName TypeDef)
  deriving (Eq)

newtype ResultName =
  ResultName Text
  deriving (Eq)

newtype ResultDefMap =
  ResultDefMap (Map ResultName TypeDef)
  deriving (Eq)

data OpDef =
  OpDef
    { opDefName        :: Text
    , opDefParams      :: ParameterDefMap
    , opDefAttrs       :: AttributeDefMap
    , opDefResults     :: ResultDefMap
    , opDefConstraints :: [Constraint]
    , opDefProperties  :: [OpDefProperty]
    }

instance Eq OpDef where
  o1 == o2 =
    opDefName o1 == opDefName o2 &&
    opDefParams o1 == opDefParams o2 &&
    opDefAttrs o1 == opDefAttrs o2 && opDefResults o1 == opDefResults o2
