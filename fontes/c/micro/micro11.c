#include<stdio.h>
int verifica(int n)
{
	int res;
	if (n > 0) 
	{
		res = 1;
	}
 	else if (n < 0)
	{
 	res = -1;
	}
	else
	{
	res = 0;
	}
	return res;
}

int main()
{
 int numero;
 int x;
 printf("Digite um número: ");
 scanf("%d", &numero);
 x = verifica(numero);

 if (x == 1)
 {
 	printf("Número positivo\n");
 }
 else if (x == 0)
 {
  printf("Zero\n");
 }
 else
 {
  	printf("Número negativo\n");
 }
 return 0;
}