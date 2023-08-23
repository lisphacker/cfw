module CFW.Core.ValueDef where

import           CFW.Core.TypeDef (TypeDef)
import           Data.Text        (Text)

data SideEffect
  = MemRead
  | MemWrite
  | MemAlloc
  deriving (Eq)

data ParamProperty
  = HasSideEffect [SideEffect]
  | Optional
  deriving (Eq)

data ParamDef =
  ParamDef
    { paramName       :: Text
    , paramType       :: TypeDef
    , paramProperties :: [ParamProperty]
    }
  deriving (Eq)
