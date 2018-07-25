program Micro04;
    
var 
	x, num, intervalo: INTEGER;
begin

    for x:= 1 to 5 do 
        begin
            writeln('Escreva um numero: ');
            readln(num);
            if num>=10 then
                if num<=150 then
                    intervalo:=intervalo+1;
        end;
    
    writeln('Ao total, foram digitados ',intervalo,' números no intervalo entre 10 e 150')
end.
