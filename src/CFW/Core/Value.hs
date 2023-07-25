module CFW.Core.Value where

import           CFW.Core.Type (TypeDef)
import           Data.Text     (Text)

class IsValue v where
  valueName :: v -> Text
  valueType :: v -> TypeDef

data Value =
  forall v. IsValue v =>
              Value v
