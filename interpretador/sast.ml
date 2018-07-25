open Ast

type expressao = ExpVar of ident pos
              | ExpInt of int pos
              | ExpString of string pos
              | ExpBool of bool pos
              | ExpReal of float pos 
	      | ExpVoid (*of unit pos *)   
              | ExpOp of (oper pos) * expressao * expressao
	      | ExpChamada of ident pos * (expressao expressoes)	
