open Ast

type expressao = ExpVar of ident * tipo
              | ExpInt of int *tipo
              | ExpString of string * tipo
	      | ExpVoid (*of unit * tipo*)  
              | ExpBool of bool * tipo
              | ExpReal of float * tipo
              | ExpOp of (oper * tipo) * (expressao* tipo) * (expressao* tipo)
	      | ExpChamada of ident * (expressao expressoes)* tipo
