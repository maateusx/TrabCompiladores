
%{
open Lexing
open Ast
open Sast
%}

%token <int * Lexing.position> LITINT
%token <float * Lexing.position> LITREAL
%token <string * Lexing.position> ID
%token <string * Lexing.position> LITSTRING
%token <string * Lexing.position> PROGRAM
%token <Lexing.position> BEGIN
%token <Lexing.position> END
%token <Lexing.position> ENDPROG
%token <Lexing.position> VAR
%token <Lexing.position> VIRG DOISPONTOS PONTO PONTOVIRG
%token <Lexing.position> APAR FPAR
%token <Lexing.position> INTEGER STRING CHAR REAL
%token <Lexing.position> IF THEN ELSE
%token <Lexing.position> FOR WHILE DO TO
%token <Lexing.position> LEIA LEIALN
%token <Lexing.position> PRINT PRINTLN
%token <Lexing.position> ATRIB
%token <Lexing.position> MAIS
%token <Lexing.position> MENOS
%token <Lexing.position> MULTIPLICA
%token <Lexing.position> DIVIDE
%token <Lexing.position> MODULO
%token <Lexing.position> MENOR
%token <Lexing.position> IGUAL
%token <Lexing.position> MENORIGUAL
%token <Lexing.position> MAIORIGUAL
%token <Lexing.position> DIFERENTE
%token <Lexing.position> MAIOR 
%token <Lexing.position> E
%token <Lexing.position> OU
%token <Lexing.position> CASE
%token <Lexing.position> OF
%token <Lexing.position> FUNCAO
%token <Lexing.position> PROCEDURE
%token <bool * Lexing.position> BOOL
%token <Lexing.position> BOOLEAN
%token EOF

%left OU
%left E
%left IGUAL DIFERENTE MAIOR MENOR MAIORIGUAL MENORIGUAL
%left MAIS MENOS
%left MULTIPLICA DIVIDE MODULO

%start <Sast.expressao Ast.programa> programa

%%

programa: p=PROGRAM  PONTOVIRG
	fs = declaracao_funcao*
            ds = declaracao*
          BEGIN
            cs = comando*
          ENDPROG
          EOF { Programa (fst p,fs, List.flatten ds, cs) }

declaracao: |VAR ids = separated_nonempty_list(VIRG, ID) DOISPONTOS t = tipo PONTOVIRG {List.map (fun id -> DecVar (id,t)) ids }
			|ids = separated_nonempty_list(VIRG, ID) DOISPONTOS t = tipo PONTOVIRG {List.map (fun id -> DecVar (id,t)) ids }
         
(* Declaração de variáveis ok!*)

tipo: t=tipo_simples  { t }


tipo_simples: |INTEGER  { TipoInt    }
            | REAL   { TipoReal }
            | STRING   { TipoString }
            | CHAR   { TipoChar }
	    | BOOLEAN {TipoBool}

(* TIPOS ok!*)

parametros: ids = separated_list(VIRG, ID) DOISPONTOS t=tipo_simples {  List.map (fun id -> (id,t)) ids }    

declaracao_funcao: FUNCAO id = ID APAR p=parametros* FPAR DOISPONTOS tp = tipo_simples PONTOVIRG
        bv = declaracao*
        BEGIN 
        lc = comando* 
        END PONTOVIRG {Funcao{fn_nome=id;fn_prms=List.flatten p; fn_tiporeturn=tp;fn_locais= List.flatten bv;fn_cmds=lc} }
	  	
    (*|PROCEDURE id = ID APAR p = parametros FPAR tp= PONTOVIRG
		bv = declaracao*
		BEGIN
		c = comando*
		END PONTOVIRG {Funcao (id,p,tp,bv,c)}*)

comando: c=comando_atribuicao { c } (*ok*)
       | c=comando_se         { c } (*ok*)
       | c=comando_entrada    { c } (*ok*)
       | c=comando_saida      { c } (*ok*)
       | c=comando_for      { c } (*ok*)
       | c=comando_while     { c } (*ok*)
       (*| c=comando_case      { c } (*ok*)*)
      | c = comando_funcao {c }

comando_atribuicao: v=expressao ATRIB e=expressao PONTOVIRG {CmdAtrib (v,e)}
	           
(* Atribuição ok!*)

(*comando_funcao: |id = ID APAR p=option(arg=separated_nonempty_list(VIRG,expressao) {arg}) FPAR {CmdChamadaFuncao (id, p)}*)
comando_funcao: exp=chamada 	{ CmdChamada exp }
comando_se:IF teste=expressao THEN BEGIN entao = comando* END
               senao=option(ELSE BEGIN cs=comando* END PONTOVIRG {cs} )
		{CmdSe (teste, entao, senao)}

(* IFS OK *)

comando_entrada: LEIA APAR xs=separated_nonempty_list(VIRG, expressao) FPAR PONTOVIRG {CmdEntrada xs}
		 |LEIALN APAR xs=separated_nonempty_list(VIRG, expressao) FPAR PONTOVIRG {CmdEntradaln xs}
(* Leitura ok!*)

comando_saida: PRINT APAR xs=separated_nonempty_list(VIRG, expressao) FPAR PONTOVIRG { CmdSaida xs}
	       |PRINTLN APAR cs=separated_nonempty_list(VIRG, expressao) FPAR PONTOVIRG { CmdSaidaln cs}
(* Saída ok!*)

(*comando_for: FOR  v=variavel ATRIB ex=expressao TO e=expressao DO BEGIN c=comando* END PONTOVIRG { CmdFor(v,ex,e,c) }*)
comando_for: FOR ca=comando_atribuicao TO e=expressao DO c=comando {CmdFor(ca, e, c)}
comando_while: WHILE teste=expressao DO BEGIN c=comando* END PONTOVIRG {CmdWhile(teste,c)}

(*comando_case: CASE v=variavel OF c = cases+ default=option(ELSE cs=comando {cs})  END PONTOVIRG {CmdCase(v,c,default)} (*Shift-reduce a corrigir*)*)

(*cases: e = expressao DOISPONTOS c = comando {Case(e,c)}*)

args: APAR FPAR { [] }
	| APAR seq=seq_args FPAR { seq }
seq_args: e=expressao { [e] }
		| s=seq_args VIRG e=expressao { s @ [e] }
expressao:
         | v=ID { ExpVar v    }
         | i=LITINT    { ExpInt i    }
         | s=LITSTRING   { ExpString s }
         | r=LITREAL     { ExpReal r   }
	 | b=BOOL	 { ExpBool b }
	 | c = chamada 	 { c }
	 (*| c = comando_funcao {ExpChamadaF c}*)
	 | e1=expressao op=oper e2=expressao { ExpOp (op, e1, e2) }
 	 | APAR e=expressao FPAR { e }

chamada: nome=ID a=args 	{ ExpChamada(nome, a) }
(*chamada_func:
    | f = comando_funcao {ExprChamadaFuncao } *)

%inline oper:
	| pos=MAIS  { (Mais, pos)  }
        | pos=MENOS { (Menos, pos) }
        | pos=MULTIPLICA  { (Mult, pos)  }
        | pos=DIVIDE   { (Div, pos)   }
        | pos=MODULO   { (Mod, pos)   }
        | pos=MENOR { (Menor, pos) }
        | pos=IGUAL { (Igual, pos) }
        | pos=MENORIGUAL { (MenorIgual, pos) }
        | pos=MAIORIGUAL { (MaiorIgual, pos) }
        | pos=DIFERENTE { (Difer, pos) }
        | pos=MAIOR { (Maior, pos) }
        | pos=E  {(And, pos)}
        | pos=OU { (Or, pos)    }

variavel:
        | x=ID       { VarSimples x }
        | v=variavel PONTO x=ID { VarCampo (v,x) }

