
(* This file was auto-generated based on "sintatico.messages". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Expected programa\n"
    | 1 ->
        "Expected a type of bib\n"
    | 162 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 10 ->
        "Expected ID\n"
    | 11 ->
        "Expected (\n"
    | 12 ->
        "Expected separated nonempty list\n"
    | 13 ->
        "Expected ; or ,\n"
    | 158 ->
        "Expected EOF\n"
    | 15 ->
        "Exected a list of parameters\n"
    | 16 ->
        "Expected ID\n"
    | 19 ->
        "Expected , to separate arguments\n"
    | 20 ->
        "Expected a list\n"
    | 23 ->
        "Expected {\n"
    | 29 ->
        "Expected ( after while\n"
    | 30 ->
        "Expected expression inside while\n"
    | 80 ->
        "Expected operator\n"
    | 81 ->
        "Expected { after )\n"
    | 82 ->
        "Expected list of commands\n"
    | 25 ->
        "Expected , separating arguments\n"
    | 152 ->
        "Expected a list of declarations\n"
    | 24 ->
        "Expected a list of declarations\n"
    | 31 ->
        "Expected expression\n"
    | 79 ->
        "Expected operator\n"
    | 32 ->
        "Expected expression\n"
    | 78 ->
        "Expected operator\n"
    | 83 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 150 ->
        "Expected a list of commands\n"
    | 84 ->
        "Expected operator\n"
    | 85 ->
        "Expected (\n"
    | 86 ->
        "Expected expression\n"
    | 87 ->
        "Expected operator\n"
    | 121 ->
        "Expected ; after puts\n"
    | 33 ->
        "Expected expression\n"
    | 100 ->
        "Expected operator\n"
    | 43 ->
        "Expected expression\n"
    | 44 ->
        "Expected operator\n"
    | 52 ->
        "Expected expression\n"
    | 53 ->
        "Expected operator\n"
    | 54 ->
        "Expected expression\n"
    | 55 ->
        "Expected operator\n"
    | 45 ->
        "Expected expression\n"
    | 48 ->
        "Expected expression\n"
    | 56 ->
        "Expected expression\n"
    | 57 ->
        "Expected operator\n"
    | 58 ->
        "Expected expression\n"
    | 59 ->
        "Expected operator\n"
    | 60 ->
        "Expected expression\n"
    | 61 ->
        "Expected operator\n"
    | 62 ->
        "Expected expression\n"
    | 63 ->
        "Expected operator\n"
    | 64 ->
        "Expected expression\n"
    | 65 ->
        "Expected operator\n"
    | 66 ->
        "Expected expression\n"
    | 67 ->
        "Expected operator\n"
    | 50 ->
        "Expected expression\n"
    | 68 ->
        "Expected expression\n"
    | 69 ->
        "Expected operator or ','\n"
    | 101 ->
        "Expected expression after atribution\n"
    | 102 ->
        "Expected operator\n"
    | 129 ->
        "Expected ;\n"
    | 89 ->
        "Expected ( after if\n"
    | 90 ->
        "Expected expression after (\n"
    | 91 ->
        "Expected ) after expression on if\n"
    | 92 ->
        "Expected { after )\n"
    | 93 ->
        "Expected commands inside if\n"
    | 140 ->
        "Expected something after }\n"
    | 141 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 142 ->
        "Expected commands list after { on else\n"
    | 38 ->
        "Expecter ( after ID, or operator in case this is a variable\n"
    | 39 ->
        "Expected list after (\n"
    | 74 ->
        "Expected operator\n"
    | 75 ->
        "Expected list after ,\n"
    | 133 ->
        "Expected operator\n"
    | 94 ->
        "Expected ( after gets\n"
    | 95 ->
        "Expected expression after (\n"
    | 96 ->
        "Expected operator or )\n"
    | 125 ->
        "Expected ;\n"
    | 98 ->
        "Expected ( after for\n"
    | 99 ->
        "Expected atributions before ;\n"
    | 103 ->
        "Expected ; after atributions\n"
    | 104 ->
        "Expected condition before ;\n\tfor(i=0;i<10;i=i+1)\n                 ^\n"
    | 105 ->
        "Expected ; after condition on for\n\tfor(i=0;i<10;i=i+1)\n                    ^\n"
    | 106 ->
        "Expected list of increment before end of for\n\tfor(i=0;i<10;i=i+1)\n                      ^\n"
    | 137 ->
        "Expected ',' to separate arguments inside list\n"
    | 136 ->
        "Strange error here\n"
    | 108 ->
        "Expected { after for\n\tfor(i=0;i<10;i=i+1){\n                           ^\n"
    | 109 ->
        "Expected comands inside for\n\tfor(i=0;i<10;i=i+1)\n                     ^\n"
    | 110 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 111 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 131 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 114 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 115 ->
        "Expected conditions inside while\n\tdo{ //comands}while(conditions);\n                             ^\n"
    | 116 ->
        "Expected ) before ;\n\tdo{ //comands}while(conditions);\n                                      ^\n"
    | 117 ->
        "State 117: Expected ; after while\n\tdo{ //comands}while(conditions);\n                                       ^\n"
    | 113 ->
        "State 113: Expected } before while\n\tdo{ //comands}while(conditions);\n                     ^\n"
    | 40 ->
        "State 40: Expected expression after (\n\ta = a + (b+c);\n              ^\n"
    | 42 ->
        "State 42: Expected an operator befor expression;\n\ta = a + b;\n              ^\n"
    | _ ->
        raise Not_found
