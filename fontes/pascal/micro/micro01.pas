program Micro01;
    
var 
	cel, far: REAL;
begin
    writeln('Tabela de conversão: Celsius -> Fahrenheit');
    writeln('Digite a temperatura em Celsius: ');
    readln(cel);
    far:=(9*cel+160)/5;
    writeln('A nova temperatura é: ',far,' F');
end.
