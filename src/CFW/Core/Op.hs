module CFW.Core.Op where

import CFW.Core.OpDef (OpDef)

class IsOp o where
  opDef :: o -> OpDef

data Op = forall o. IsOp o => Op o