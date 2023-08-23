module CFW.Dialects.Builtin where

import           CFW.Core.Attributes (emptyAttributeDefMap)
import           CFW.Core.Dialect    (Dialect (..))
import           CFW.Core.OpDef      (OpDef (OpDef), OpDefTrait (..),
                                      RegionType (GraphRegion))

moduleOp =
  OpDef
    "module"
    []
    emptyAttributeDefMap
    []
    []
    [HasRegions [(Just 1, GraphRegion)], IsolatedFromAbove]

builtinDialect = Dialect "builtin" [moduleOp]
