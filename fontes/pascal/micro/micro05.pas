program Micro05;
    
var 
    nome, sexo: CHAR;
	x, h, m: INTEGER;
begin

    for x:= 1 to 5 do 
        begin
            writeln('Digite o nome: ');
            readln(nome);
            writeln('Escreva H - Homem ou M - Mulher: ');
            readln(sexo);
            
            case (sexo) of
               'H' : h:=h+1;
               'M' : m:=m+1;
            else
               writeln('Sexo só pode ser H ou M!');
            end;
        end;
    
        writeln('Foram inseridos',h,' Homens');
        writeln('Foram inseridos',m,' Mulheres')
end.