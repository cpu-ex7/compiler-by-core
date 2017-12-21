open Syntax

let rec join_glb e glb_e =
  match glb_e with
  |Unit _ -> e
  |Let (xt,e1,e2) ->Let (xt,e1,(join_glb e e2))
  |LetRec (fundef,e1)->LetRec (fundef,(join_glb e e1))
  |LetTuple (xts,e1,e2)->LetTuple (xts,e1,(join_glb e e2))
  |_ ->failwith "global.ml toplevel must be unit"
