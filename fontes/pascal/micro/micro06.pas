program micro05;
var
	numero : integer;
begin
 	write('Digite um numero de 1 a 5: ');
 	readln(numero);
	case numero of
		1 : writeln('Um');
		2 : writeln('Dois');
		3 : writeln('Tres');
		4 : writeln('Quatro');
		5 : writeln('Cinco');
	 	else writeln('Numero invalido!!!');
 	end;
 end.