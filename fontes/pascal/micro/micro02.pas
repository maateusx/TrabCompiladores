program Micro02;
    
var 
	num1, num2: INTEGER;
begin
    writeln('Digite o primeiro numero: ');
    readln(num1);
    writeln('Digite o segundo numero: ');
    readln(num2);
    if num1>num2 then
        writeln('O primeiro numero ',num1,' eh maior que o segundo numero ',num2)
    else
        writeln('O segundo numero ',num2,' eh maior que o primeiro numero ',num1);
end.
