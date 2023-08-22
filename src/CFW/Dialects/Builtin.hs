module CFW.Dialects.Builtin where

import           CFW.Core.Attributes (emptyAttributeMapDef)
import           CFW.Core.Dialect    (Dialect (..))
import           CFW.Core.OpDef      (OpDef (OpDef), OpDefProperty (..),
                                      RegionType (GraphRegion))

moduleOp =
  OpDef
    "module"
    []
    emptyAttributeMapDef
    []
    []
    [HasRegions [GraphRegion], IsolatedFromAbove]

builtinDialect = Dialect "builtin" [moduleOp]
