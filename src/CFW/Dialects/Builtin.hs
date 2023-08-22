module CFW.Dialects.Builtin where

import           CFW.Core.Attributes (emptyAttributeDefMap)
import           CFW.Core.Dialect    (Dialect (..))
import           CFW.Core.OpDef      (OpDef (OpDef), OpDefProperty (..),
                                      RegionType (GraphRegion))

moduleOp =
  OpDef
    "module"
    []
    emptyAttributeDefMap
    []
    []
    [HasRegions [GraphRegion], IsolatedFromAbove]

builtinDialect = Dialect "builtin" [moduleOp]
