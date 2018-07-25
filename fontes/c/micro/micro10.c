#include <stdio.h>
#include <stdlib.h>

int fator(int numero)
{
 if(numero > 1)
 	return numero * fator(numero - 1);
 else
 	return 1;
}

int main()
{
 int numero= 0;
 int fat;
 printf("Digite um numero: ");
 scanf("%d", &numero);
 fat = fator(numero);
 printf("O fatorial de %d é %d\n",numero, fat);
 return 0;
}