{
  open Lexing
  open Printf
  open Sintatico

exception Erro of string

  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  (*let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d-%d: caracter desconhecido %c" lin col c

  let erro lin col msg =
    let mensagem = sprintf "%d-%d: %s" lin col msg in
       failwith mensagem

  let erroComentario lin col msg = 
        let mensagem = sprintf "%d-%d: %s" lin col msg in 
        failwith mensagem     
*)
}

let digito = ['0' - '9']
let inteiro = digito+
let real = digito* '.' digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n" | "\\n"

let comentario = "//" [^ '\r' '\n' ]*

rule token = parse
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }

| comentario { token lexbuf }
| "(*"       { 
		let pos = lexbuf.lex_curr_p in
		let lin = pos.pos_lnum
		and col = pos.pos_cnum - pos.pos_bol - 1 in
		comentario_bloco lin col 0 lexbuf }
| "{"        { 
		let pos = lexbuf.lex_curr_p in
		let lin = pos.pos_lnum
		and col = pos.pos_cnum - pos.pos_bol - 1 in
		comentario_bloco_dif lin col 0 lexbuf }
| '('        { APAR }
| ')'        { FPAR }
| "program"  { PROGRAM }
| "var"      { VAR }
| ','        { VIRG }
| ';'        { PONTOVIRG } 
| '.'        { PONTO } 
| ':'        { DOISPONTOS }
| "real"     { REAL }
| "boolean"  {BOOLEAN}
| "of"  {OF}
| "integer"  { INTEGER }
| "string"   { STRING }
| "char"     { CHAR }
| "begin"    { BEGIN }
| "end"      { END }
| "end."     {ENDPROG}
| "write"    { PRINT }  
| "writeln"  { PRINTLN }
| "read"     { LEIA } 
| "readln"   { LEIALN } 
| '+'        { MAIS }
| '-'        { MENOS }
| '/'        { DIVIDE }
| '*'        { MULTIPLICA }
| "div"      { MODULO }   
| '>'        { MAIOR }
| '<'        { MENOR }
| '='        { IGUAL }
| ">="       { MAIORIGUAL }
| "<="       { MENORIGUAL } 
| "<>"       { DIFERENTE }
| ":="       { ATRIB }
| "or"       { OU }
| "and"      { E } 
| "function" { FUNCAO }
| "procedure" {PROCEDURE}
| "if"       { IF }
| "then"     { THEN }
| "else"     { ELSE }
| "while"    { WHILE }
| "for"      { FOR }
| "to"       { TO }
| "do"       { DO }
| "case"     { CASE }
| "of"       { OF }
| inteiro as num { let numero = int_of_string num in 
                    LITINT numero  } 
| real as r {let r = float_of_string r in LITREAL r}
| identificador as id { ID id }
| '\''        { let pos = lexbuf.lex_curr_p in
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol - 1 in
               let buffer = Buffer.create 1 in 
               let str = leia_string lin col buffer lexbuf in
               LITSTRING str }
| _ {raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf )) }
| eof        { EOF }


and comentario_bloco lin col n = parse
   "*)"      { if n=0 then token lexbuf 
               else comentario_bloco lin col (n-1) lexbuf }
| "(*"       { comentario_bloco lin col (n+1) lexbuf }
| novalinha  { incr_num_linha lexbuf; comentario_bloco lin col n lexbuf }
| _          { comentario_bloco lin col n lexbuf }
| eof        { raise (Erro "Comentário não terminado") }

and comentario_bloco_dif lin col n = parse
   "}"      { if n=0 then token lexbuf 
               else comentario_bloco_dif lin col (n-1) lexbuf }
| "{"       { comentario_bloco_dif lin col (n+1) lexbuf }
| novalinha  { incr_num_linha lexbuf; comentario_bloco_dif lin col n lexbuf }
| _          { comentario_bloco_dif lin col n lexbuf }
| eof       { raise (Erro "Comentário não terminado") }

and leia_string lin col buffer = parse
   '\''     { Buffer.contents buffer}
| "\\t"    { Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
| "\\n"    { Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string lin col buffer lexbuf }
| eof      { raise (Erro "A string não foi fechada")}




