
(* This file was auto-generated based on "sintatico.messages". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Estado 0: Esperava 'program'\n"
    | 1 ->
        "Estado 1: Esperava ';'\n"
    | 2 ->
        "Estado 2: Esperava declaracao de variavel ou declaracao de funcao ou um 'begin'\n"
    | 3 ->
        "Estado 3: Esperava uma declaracao de variavel\n"
    | 8 ->
        "Estado 8: Esperava um tipo\n"
    | 14 ->
        "Estado 14: Esperava ';'\n"
    | 21 ->
        "Estado 21: Esperava um identificador da funcao\n"
    | 22 ->
        "Estado 22: Esperava '('\n"
    | 23 ->
        "Estado 23: Esperava argumentos ou ')'\n"
    | 32 ->
        "Estado 32: Esperava ';'\n"
    | 33 ->
        "Estado 33: Esperava declaracoes de variaveis ou 'begin'\n"
    | 34 ->
        "Estado 34: Esperava um 'begin'\n"
    | 35 ->
        "Estado 35: Esperava um ou mais comandos ou 'end'\n"
    | 139 ->
        "Estado 139: Esperava um ';'\n"
    | 162 ->
        "Estado 162: Esperava um 'begin' ou uma nova declaracao de funcao\n"
    | 27 ->
        "Estado 27: Esperava um tipo\n"
    | 28 ->
        "Estado 28: Esperava ';' ou ')'\n"
    | 25 ->
        "Estado 25: Esperava zero ou mais parametros da funcao\n"
    | 4 ->
        "Estado 4: Esperava ':' ou ','\n"
    | 5 ->
        "Estado 5: Esperava um identificador\n"
    | 17 ->
        "Estado 17: Esperava um tipo\n"
    | 18 ->
        "Estado 18: Esperava um ';'\n"
    | 141 ->
        "Estado 141: Esperava um 'begin' ou mais declaracoes de variaveis\n"
    | 143 ->
        "Estado 143: Esperava um identificador, o nome da funcao\n"
    | 144 ->
        "Estado 144: Esperava um '('\n"
    | 145 ->
        "Estado 145: Esperava ')' ou os parametros da funcao\n"
    | 147 ->
        "Estado 147: Esperava ':'\n"
    | 148 ->
        "Estado 148: Esperava um tipo\n"
    | 149 ->
        "Estado 149: Esperava um ';'\n"
    | 150 ->
        "Estado 150: Esperava zero ou mais declaracoes de variaveis ou um 'begin'\n"
    | 151 ->
        "Estado 151: Esperava um 'begin'\n"
    | 152 ->
        "Estado 152: Esperava um ou mais comandos\n"
    | 154 ->
        "Estado 154: Esperava um ';'\n"
    | 36 ->
        "Estado 36: Esperava um '(' seguido de zero ou mais argumentos\n"
    | 37 ->
        "Estado 37: Esperava um ')' ou mais argumentos\n"
    | 82 ->
        "Estado 82: Esperava um ')' ou uma ','\n"
    | 79 ->
        "Estado 79: Esperava uma expressao\n"
    | 80 ->
        "Estado 80: Esperava uma ','\n"
    | 84 ->
        "Estado 84: Esperava um '(' seguido de zero ou mais argumentos\n"
    | 86 ->
        "Estado 86: Esperava uma expressao\n"
    | 87 ->
        "Estado 87: Esperava um 'do' ou um operador\n"
    | 47 ->
        "Estado 47: Esperava uma expressao\n"
    | 48 ->
        "Estado 48: Esperava um operador ou um 'do'\n"
    | 55 ->
        "Estado 55: Esperava uma expressao\n"
    | 56 ->
        "Estado 56: Esperava um operador ou um 'do'\n"
    | 57 ->
        "Estado 57: Esperava uma expressao\n"
    | 58 ->
        "Estado 58: Esperava um operador ou um 'do'\n"
    | 49 ->
        "Estado 49: Esperava uma expressao\n"
    | 59 ->
        "Estado 59: Esperava uma expressao\n"
    | 60 ->
        "Estado 60: Esperava um operador ou um 'do'\n"
    | 61 ->
        "Estado 61: Esperava uma expressao\n"
    | 62 ->
        "Estado 62: Esperava um operador ou um 'do'\n"
    | 63 ->
        "Estado 63: Esperava uma expressao\n"
    | 64 ->
        "Estado 64: Esperava um operador ou um 'do'\n"
    | 65 ->
        "Estado 65: Esperava uma expressao\n"
    | 66 ->
        "Estado 66: Esperava um operador ou um 'do'\n"
    | 67 ->
        "Estado 67: Esperava uma expressao\n"
    | 68 ->
        "Estado 68: Esperava um operador ou um 'do'\n"
    | 69 ->
        "Estado 69: Esperava uma expressao\n"
    | 70 ->
        "Estado 70: Esperava um operador ou um 'do'\n"
    | 88 ->
        "Estado 88: Esperava um ou mais comandos\n"
    | 51 ->
        "Estado 51: Esperava uma expressao\n"
    | 53 ->
        "Estado 53: Esperava uma expressao\n"
    | 74 ->
        "Estado 74: Esperava uma expressao\n"
    | 75 ->
        "Estado 75: Esperava um operador ou um 'do'\n"
    | 71 ->
        "Estado 71: Esperava uma expressao\n"
    | 72 ->
        "Estado 72: Esperava um operador ou um 'do'\n"
    | 39 ->
        "Estado 39: Esperava uma expressao\n"
    | 76 ->
        "Estado 76: Esperava um operador ou um 'do'\n"
    | 45 ->
        "Estado 45: Esperava uma expressao\n"
    | 46 ->
        "Estado 46: Esperava um operador ou um ')'\n"
    | 157 ->
        "Estado 157: Esperava um ou mais comandos ou um 'end.'\n"
    | 89 ->
        "Estado 89: Esperava um '('\n"
    | 90 ->
        "Estado 90: Esperava um ou mais identificadores ou um ')'\n"
    | 93 ->
        "Estado 93: Esperava uma ',' ou um ')'\n"
    | 94 ->
        "Estado 94: Esperava um identificador\n"
    | 98 ->
        "Estado 98: Esperava um '('\n"
    | 100 ->
        "Estado 100: Esperava uma expressao\n"
    | 101 ->
        "Estado 101: Esperava um 'then'\n"
    | 102 ->
        "Estado 102: Esperava um ou mais comandos\n"
    | 134 ->
        "Estado 134: Esperava um ';' ou um 'else'\n"
    | 135 ->
        "Estado 135: Esperava um ou mais comandos \n"
    | 103 ->
        "Estado 103: Esperava um ':=' ou argumentos\n"
    | 104 ->
        "Estado 104: Esperava uma expressao ou um identificador\n"
    | 107 ->
        "Estado 107: Esperava um ';'\n"
    | 105 ->
        "Estado 105: Esperava um ';' ou argumentos\n"
    | 109 ->
        "Estado 109: Esperava um identificador para o comando de atribuicao\n"
    | 110 ->
        "Estado 110: Esperava um ':='\n"
    | 111 ->
        "Estado 111: Esperava uma expressao\n"
    | 113 ->
        "Estado 113: Esperava uma expressao\n"
    | 114 ->
        "Estado 114: Esperava um 'do'\n"
    | 115 ->
        "Estado 115: Esperava um ou mais comandos\n"
    | 112 ->
        "Estado 112: Esperava um 'to' ou um 'downto'\n"
    | 130 ->
        "Estado 130: Esperava uma expressao\n"
    | 131 ->
        "Estado 131: Esperava um 'do'\n"
    | 132 ->
        "Estado 132: Esperava um ou mais comandos\n"
    | 159 ->
        "Estado 159: Esperava um '.'\n"
    | 160 ->
        "Estado 160: Todos os comandos devem ser incluidos entre o bloco begin/end. principal\n"
    | 116 ->
        "Estado 116: Esperava um ou mais comandos\n"
    | 126 ->
        "Estado 126: Esperava ';'\n"
    | 127 ->
        "Estado 127: Esperava um ou mais comandos\n"
    | _ ->
        raise Not_found

