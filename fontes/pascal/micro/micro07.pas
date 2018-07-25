program micro07;
 var
 programa: boolean;
 numero : integer;
 opc :char;
 begin
 programa := true;
 while (programa) do
 begin
 write('Digite um numero: ');
 readln(numero);
 if (numero > 0 ) then
 begin
 writeln('o numero eh positivo');
 end
 else
 begin
 if (numero = 0) then
 begin
 writeln('o numero eh 0')
 end
 else
 begin
 writeln('o numero eh negativo');
 end;

 end;
 writeln('Deseja finalizar o programa? R: (S/N) ');
 readln(opc);
 if opc = 'S' then
 begin
 programa := false;
 end
 end;
 end.