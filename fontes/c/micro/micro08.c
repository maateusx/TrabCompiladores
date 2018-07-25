#include<stdio.h>

int main()
{
 int numero;
 numero = 1;
 do
 {
	 printf("Digite um número: ");
	 scanf("%d", &numero);
	 if(numero > 10)
	 {
	 	printf("O numero %d é maior que 10 \n", numero);
	 }
	 else
	 {
	 	printf("O numero %d é menor que 10 \n", numero);
	 }
 }
 while(numero != 0);

 return 0;
}