
%{
open Ast

%}

%token <int> LITINT
%token <float> LITREAL
%token <string> ID
%token <string> LITSTRING
%token PROGRAM
%token BEGIN
%token END
%token ENDPROG
%token VAR
%token VIRG DOISPONTOS PONTO PONTOVIRG
%token APAR FPAR
%token INTEGER STRING CHAR REAL
%token IF THEN ELSE
%token FOR WHILE DO TO
%token LEIA LEIALN
%token PRINT PRINTLN
%token ATRIB
%token MAIS
%token MENOS
%token MULTIPLICA
%token DIVIDE
%token MODULO
%token MENOR
%token IGUAL
%token MENORIGUAL
%token MAIORIGUAL
%token DIFERENTE
%token MAIOR 
%token E
%token OU
%token CASE
%token OF
%token FUNCAO
%token PROCEDURE
%token EOF
%token BOOLEAN

%left OU
%left E
%left IGUAL DIFERENTE MAIOR MENOR MAIORIGUAL MENORIGUAL
%left MULTIPLICA DIVIDE MODULO
%left MAIS MENOS

%start <Ast.programa> programa

%%

programa: PROGRAM id=ID PONTOVIRG
	fs = declaracao_funcao*
            ds = declaracao*
          BEGIN
            cs = comando*
          ENDPROG
          EOF { Programa (fs, List.flatten ds, cs) }

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

parametros: ids = separated_list(VIRG, ID) DOISPONTOS t=tipo_simples {  List.map (fun id -> Parametros (id,t)) ids }    

declaracao_funcao: FUNCAO id = ID APAR p=parametros FPAR DOISPONTOS tp = tipo_simples PONTOVIRG
        bv = declaracao*
        BEGIN 
        lc = comando* 
        END PONTOVIRG {Funcao(id, p, tp,List.flatten bv, lc) }
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
       | c=comando_case      { c } (*ok*)
       | c = comando_funcao {c }

comando_atribuicao: v=variavel ATRIB e=expressao PONTOVIRG {CmdAtrib (v,e)}
(* Atribuição ok!*)

comando_funcao: |id = ID APAR p=option(arg=separated_nonempty_list(VIRG,expressao) {arg}) FPAR {CmdChamadaFuncao (id, p)}

comando_se:IF teste=expressao THEN BEGIN entao = comando* END
               senao=option(ELSE BEGIN cs=comando* END PONTOVIRG {cs} )
		{CmdSe (teste, entao, senao)}

(* IFS OK *)

comando_entrada: LEIA xs=expressao PONTOVIRG {CmdEntrada xs}
		 |LEIALN xs=expressao PONTOVIRG {CmdEntradaln xs}
(* Leitura ok!*)

comando_saida: PRINT APAR xs=separated_nonempty_list(VIRG, expressao) FPAR PONTOVIRG { CmdSaida xs}
	       |PRINTLN APAR cs=separated_nonempty_list(VIRG, expressao) FPAR PONTOVIRG { CmdSaidaln cs}
(* Saída ok!*)

comando_for: FOR  v=variavel ATRIB ex=expressao TO e=expressao DO BEGIN c=comando* END PONTOVIRG { CmdFor(v,ex,e,c) }

comando_while: WHILE teste=expressao DO BEGIN c=comando* END PONTOVIRG {CmdWhile(teste,c)}

comando_case: CASE v=variavel OF c = cases+ default=option(ELSE cs=comando {cs})  END PONTOVIRG {CmdCase(v,c,default)} (*Shift-reduce a corrigir*)

cases: e = expressao DOISPONTOS c = comando {Case(e,c)}

expressao:
         | v=variavel { ExpVar v    }
         | i=LITINT    { ExpInt i    }
         | s=LITSTRING   { ExpString s }
         | r=LITREAL     { ExpReal r   }
	 | c = comando_funcao {ExpChamadaF c}
	 | e1=expressao op=oper e2=expressao { ExpOp (op, e1, e2) }
 	 | APAR e=expressao FPAR { Expar(e) }

%inline oper:
	| MAIS  { Mais  }
        | MENOS { Menos }
        | MULTIPLICA  { Mult  }
        | DIVIDE   { Div   }
        | MODULO   { Mod   }
        | MENOR { Menor }
        | IGUAL { Igual }
        | MENORIGUAL { MenorIgual }
        | MAIORIGUAL { MaiorIgual }
        | DIFERENTE { Difer }
        | MAIOR { Maior }
        | E  { And     }
        | OU { Or    }

variavel:
        | x=ID       { VarSimples x }
        | v=variavel PONTO x=ID { VarCampo (v,x) }

