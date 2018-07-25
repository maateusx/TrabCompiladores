program Micro03;
    
var 
	numero: INTEGER;
begin
    writeln('Digite um numero: ');
    readln(numero);
    if numero>=100 then
        if numero<=200 then
            writeln('O número está no intervalo entre 100 e 200')
        else
            writeln('O número não está no intervalo entre 100 e 200')
    else
        writeln('O número não está no intervalo entre 100 e 200')
end.
