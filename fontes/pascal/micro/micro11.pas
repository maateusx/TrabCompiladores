program micro11;

 function verifica (n:integer) : integer;
 begin
 if n > 0 then
 verifica := 1
 else if n < 0 then
verifica := -1
 else
 verifica := 0;
 end;

 var
 numero,x : integer;

 begin
 write('Digite um numero: ');
 readln(numero);
 x := verifica(numero);
 if x = 1 then
 writeln('Numero positivo')
 else if x = 0 then
 writeln('zero')
else writeln('numero negativo');
 end.