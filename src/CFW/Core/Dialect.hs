module CFW.Core.Dialect where

import           CFW.Core.OpDef (OpDef (..))
import           Data.Text      (Text)

data Dialect =
  Dialect
    { dialectName   :: Text
    , dialectOpDefs :: [OpDef]
    }
