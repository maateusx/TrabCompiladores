Sintático
=====================

Instructions

```bash
$ menhir -v --list-errors sintatico.mly > sintatico.msg
$ menhir -v sintatico.mly --compile-errors sintatico.msg > erroSint.ml
$ ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib sintaticoTest.byte
$ rlwrap ocaml
$ compile_file "micro11.pas";;
```
