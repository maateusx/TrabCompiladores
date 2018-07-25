
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Estado 0: Esperava por 'program' seguido de um identificador.\n"
    | 1 ->
        "Estado 1: Esperava ';'\n"
    | 2 ->
        "Estado 2: Esperava por declaracoes de funcoes ou variaveis.\n"
    | 25 ->
        "Estado 25: Esperava por variaveis.\n"
    | 27 ->
        "Estado 27: Esperava por um tipo simples.\n"
    | 29 ->
        "Estado 29: Esperava ';'\n"
    | 6 ->
        "Estado 6: Esperava por ':' ou mais variaveis.\n"
    | 7 ->
        "Estado 7: Esperava por mais variaveis ou ':'\n"
    | 32 ->
        "Estado 32: Esperava por um tipo simples para variavel.\n"
    | 33 ->
        "Estado 33:  Esperava ';'\n"
    | 145 ->
        "Estado 145: Esperava por declaracoes.\n"
    | 3 ->
        "Estado 3: Esperava por um identificador para funcao.\n"
    | 4 ->
        "Estado 4: Esperava por '('\n"
    | 5 ->
        "Estado 5: Esperava por lista de parametros.\n"
    | 21 ->
        "Estado 21:  Esperava por ':'\n"
    | 22 ->
        "Estado 22:  Esperava por um tipo para funcao.\n"
    | 23 ->
        "Estado 23: Esperava ';'\n"
    | 24 ->
        "Estado 24: Esperava declaracoes de variaveis da funcao.\n"
    | 36 ->
        "Estado 36: Esperava bloco de comandos.\n"
    | 142 ->
        "Estado 142: Esperava 'end'.\n"
    | 143 ->
        "Estado 143: Esperava ';'\n"
    | 153 ->
        "Estado 153: Esperava declaracoes de funcoes.\n"
    | 12 ->
        "Estado 12: Esperava tipo para funcao.\n"
    | 10 ->
        "Estado 10:  Eperava lista de parametros da funcao.\n"
    | 37 ->
        "Estado 37: Esperava expressao de comparacao.\n"
    | 81 ->
        "Estado 81: Esperava por operacao com a exprssao ou 'do'.\n"
    | 82 ->
        "Estado 82: Esperava 'begin'.\n"
    | 83 ->
        "Estado 83: Esperava bloco de comandos.\n"
    | 139 ->
        "Estado 139: Esperava 'end'.\n"
    | 140 ->
        "Estado 140: Esperava ';'\n"
    | 149 ->
        "Estado 149: Esperava por bloco de comandos.\n"
    | 84 ->
        "Estado 84: Esperava '('\n"
    | 85 ->
        "Estado 85: 'println' nao pode ser vazio, falta argumentos.\n"
    | 89 ->
        "Estado 89: Esperava por operacao com expressao ou ',' seguido de mais expressoes ou ')'\n"
    | 90 ->
        "Estado 90: Esperava por mais expressoes.\n"
    | 87 ->
        "Estado 87:  Esperava ';'\n"
    | 92 ->
        "Estado 92: Esperava '('.\n"
    | 93 ->
        "Estado 93: 'print' nao pode ser vazio, falta argumentos.\n"
    | 95 ->
        "Estado 95: Esperava ';'.\n"
    | 112 ->
        "Estado 112: Esperava ':=' ou uma operacao seguido de expressao seguido de ':='.\n"
    | 47 ->
        "Estado 47: Esperava expressao apos 'or'.\n"
    | 48 ->
        "Estado 48: Esperava por nada ou operador seguido de expressao.\n"
    | 49 ->
        "Estado 49: Esperava expressao apos '*'.\n"
    | 52 ->
        "Estado 52: Esperava expressao apos 'mod'.\n"
    | 54 ->
        "Estado 54: Esperava expressao apos '-'\n"
    | 55 ->
        "Estado 55: Esperava por nada ou operador seguido de expressao.\n"
    | 58 ->
        "Estado 58: Esperava expressao apos '<='.\n"
    | 59 ->
        "Estado 59: Esperava por nada ou operador seguido de expressao.\n"
    | 62 ->
        "Estado 62: Esperava expressao apos '<'.\n"
    | 63 ->
        "Estado 63: Esperava por nada ou operador seguido de expressao.\n"
    | 60 ->
        "Estado 60: Esperava expressao apos '+'.\n"
    | 61 ->
        "Estado 61: Esperava por nada ou operador seguido de expressao.\n"
    | 64 ->
        "Estado 64: Esperava expressao apos '>='.\n"
    | 65 ->
        "Estado 65: Esperava por nada ou operador seguido de expressao.\n"
    | 66 ->
        "Estado 66: Esperava expressao apos '>'.\n"
    | 67 ->
        "Estado 67: Esperava por nada ou operador seguido de expressao.\n"
    | 68 ->
        "Estado 68: Esperava expressao apos '='.\n"
    | 69 ->
        "Estado 69: Esperava por nada ou operador seguido de expressao.\n"
    | 70 ->
        "Estado 70: Esperava expressao apos 'and'.\n"
    | 71 ->
        "Estado 71: Esperava por nada ou operador seguido de expressao.\n"
    | 56 ->
        "Estado 56: Esperava expressao apos '/'.\n"
    | 72 ->
        "Estado 72: Esperava expressao apos '<>'.\n"
    | 73 ->
        "Estado 73: Esperava por nada ou operador seguido de expressao.\n"
    | 113 ->
        "Estado 113: Esperava expressao apos ':=\".\n"
    | 114 ->
        "Estado 114: Esperava por ';' ou por operador seguido de expressao.\n"
    | 136 ->
        "Estado 136: Esperava por comandos.\n"
    | 97 ->
        "Estado 97: Esperava por '('\n"
    | 98 ->
        "Estado 98: Esperava por expressao.\n"
    | 100 ->
        "Estado 100: Esperava por ';'\n"
    | 102 ->
        "Estado 102:  Esperava por '('\n"
    | 103 ->
        "Estado 103:  Esperava por expressao.\n"
    | 105 ->
        "Estado 105:  Esperava ';'\n"
    | 107 ->
        "Estado 107: Esperava por expressao\n"
    | 108 ->
        "Estado 108: Esperava por uma operacao com outra expressao ou 'then'\n"
    | 109 ->
        "Estado 109: Esperava por 'begin'\n"
    | 110 ->
        "Estado 110: Esperava por comandos ou por 'end'.\n"
    | 129 ->
        "Estado 129: Esperava por 'end' ou por else\n"
    | 130 ->
        "Estado 130: Esperava por 'else' ou pela continuacao da funcao principal\n"
    | 131 ->
        "Estado 131: Esperava por 'begin'\n"
    | 132 ->
        "Estado 132: Esperava por bloco de comando.\n"
    | 133 ->
        "Estado 133: Esperava por 'end'.\n"
    | 134 ->
        "Estado 134: Esperava ';'\n"
    | 41 ->
        "Estado 41: Esperava por estrutura de argumentos.\n"
    | 42 ->
        "Estado 42: Esperava argumentos ou ')'.\n"
    | 79 ->
        "Estado 79: Esperava por operador para expressao ou ')'.\n"
    | 76 ->
        "Estado 76: Esperava por expressao.\n"
    | 77 ->
        "Estado 77: Esperava operador para expressao ou ','.\n"
    | 128 ->
        "Estado 128: Esperava chamada de funcao com id e seus arguemntos.\n"
    | 150 ->
        "Estado 150: Esperava 'end.'\n"
    | 111 ->
        "Estado 111: Faltou atribuicao no for.\n"
    | 116 ->
        "Estado 116: Faltou 'to' no for.\n"
    | 117 ->
        "Estado 117: Faltou expressao apos TO.\n"
    | 118 ->
        "Estado 118: Faltou operador na expressao apos TO.\n"
    | 119 ->
        "Estado 119: Faltou comando a ser executado.\n"
    | 151 ->
        "Estado 151: Nao encontrou final de arquivo\n"
    | 45 ->
        "Estado 45: Faltou ')'\n"
    | 46 ->
        "Estado 46: Faltou operador ou ')'\n"
    | _ ->
        raise Not_found
