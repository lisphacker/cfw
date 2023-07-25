module CFW.Core.Dialect where

import Data.Text (Text)

import CFW.Core.OpDef (OpDef)

class Dialect d where
  dialectName :: d -> Text
  dialectOps  :: d -> [OpDef]