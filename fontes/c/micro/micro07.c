#include<stdio.h>

int main()
{
 int programa;
 int numero;
 char opc[5];

 programa = 1;
 do
{
	 printf("Digite um número: ");
	 scanf("%d", &numero);
	 if (numero > 0)
	 {
	 	printf("Positivo\n");
	 }
	 else if (numero == 0)
	 {
	 	printf("O número é igual a 0\n");
	 }
	 else
	 {
	 	printf("Negativo\n");
	 }
	 printf("Deseja finalizar? (sim/nao) ");
	 scanf("%s", opc);
	 if(strcmp (opc, "sim") == 0)
	 {
	 	programa = 0;
	 }
 }
 while(programa == 1);

 return 0;
}