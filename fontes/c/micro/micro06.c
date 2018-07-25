#include<stdio.h>

int main()
{
 int numero;
 printf("Digite um número de 1 a 5: ");
 scanf("%d", &numero);
 switch(numero)
 {
	 case 1:
	 	printf("Um\n");
	 	break;
	 case 2:
	 	printf("Dois\n");
	 	break;
	 case 3:
	 	printf("Três\n");
	 	break;
	 case 4:
	 	printf("Quatro\n");
	 	break;
	 case 5:
	 	printf("Cinco\n");
	 	break;
	 default:
	 	printf("Número inválido!!!\n");
	 	break;
 }

 return 0;
}