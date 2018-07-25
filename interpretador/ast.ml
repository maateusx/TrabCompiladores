(* The type of the abstract syntax tree (AST). *)
open Lexing

type ident = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

type 'expr programa = Programa of ident * ('expr funcoes) * declaracoes * ('expr comandos)
and declaracoes = declaracao list
and 'expr comandos = ('expr comando) list
and declaracao = DecVar of (ident pos) * tipo
                     
and declaracao_parametros = parametros list
and parametros = Parametros of (ident pos) * tipo 


and  'expr funcoes = ('expr declaracao_funcao) list
and 'expr declaracao_funcao = Funcao of ('expr regFunc) 
and 'expr regFunc = {
		fn_nome: (ident pos);
		fn_prms: ((ident pos) * tipo) list; 
		fn_tiporeturn: tipo; 
		fn_locais: declaracoes;
		fn_cmds: 'expr comandos;
	}
                
and tipo = TipoInt
         | TipoReal
         | TipoString
	 | TipoChar
         | TipoBool
	 | TipoVoid

and campos = campo list
and campo = ident * tipo

(*and 'expr cases = Case of 'expr * ('expr comando)*)


and 'expr comando = CmdAtrib of 'expr * 'expr
            | CmdSe of 'expr * ('expr comandos) * ('expr comandos option)
	    | CmdFor of 'expr comando * 'expr * 'expr comando
            | CmdEntrada of ('expr expressoes)
            | CmdSaida of ('expr expressoes)
            | CmdEntradaln of ('expr expressoes)
            | CmdSaidaln of ('expr expressoes)
            (*| CmdFor of ('expr variavel) * 'expr * 'expr * ('expr comandos)*)
            | CmdWhile of 'expr * ('expr comandos)
            (*| CmdCase of ('expr variavel) * ('expr cases list) * ('expr comando option)*)
	    (*| CmdChamadaFuncao of ident * ('expr expressoes option)*)
	    | CmdChamada of 'expr
	    | CmdRetorno of 'expr option

and 'expr variaveis = ('expr variavel) list
and 'expr variavel = VarSimples of ident pos
             | VarCampo of ('expr variavel) * (ident pos)

and 'expr expressoes = 'expr list

and oper = Mais
         | Menos
         | Mult
         | Div
         | Mod
         | Menor
         | Igual
         | Difer
         | Maior
         | MaiorIgual 
	 | MenorIgual 
         | And
         | Or
