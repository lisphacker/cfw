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

data ParameterDef =
  ParameterDef Text TypeDef
  deriving (Eq)

data ResultDef =
  ResultDef Text TypeDef
  deriving (Eq)

data OpDef =
  OpDef
    { opDefName        :: Text
    , opDefParams      :: [ParameterDef]
    , opDefAttrs       :: AttributeDefMap
    , opDefResults     :: [ResultDef]
    , opDefConstraints :: [Constraint]
    , opDefProperties  :: [OpDefProperty]
    }

instance Eq OpDef where
  o1 == o2 =
    opDefName o1 == opDefName o2 &&
    opDefParams o1 == opDefParams o2 &&
    opDefAttrs o1 == opDefAttrs o2 && opDefResults o1 == opDefResults o2
