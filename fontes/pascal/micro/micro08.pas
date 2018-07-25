program micro08;
 var
 numero: integer;
 begin
 numero := 1;
 while numero <> 0 do
 begin
 write('Digite um numero: ');
 readln(numero);
 if (numero > 10) then
 begin
 writeln('O numero',numero,' eh maior que 10');
 end
 else
 begin
 writeln('O numero ', numero,' eh menor que 10');
 end;
 end;
 end.