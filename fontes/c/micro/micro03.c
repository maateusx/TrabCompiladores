#include<stdio.h>

int main()
{
 int numero;

 printf("Digite um número: ");
 scanf("%d", &numero);
 if (numero >= 100)
 {
 	if (numero <= 200)
 	{
 		printf("O número está no intervalo entre 100 e 200\n");
 	}
 	else
 	{
 		printf("O número não está no intervalo entre 100 e 200\n");
 	}
 }
 else
 {
 	printf("O número não está no intervalo entre 100 e 200\n");
 }
 return 0;
}