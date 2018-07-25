Semântico
=====================


```bash
$ ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib semanticoTest.byte
$ rlwrap ocaml
$ parse_arq "exemplos/ex2.tip";;
$ verifica_tipos "exemplos/ex2.tip";;
```
