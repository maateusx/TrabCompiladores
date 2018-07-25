#include<stdio.h>

int main()
{
 int num1;
 int num2;

 printf("Digite o primeiro número: ");
 scanf("%d", &num1);
 printf("Digite o segundo número: ");
 scanf("%d", &num2);
 if (num1 > num2)
 {
 	printf("O primeiro número %d é maior que o segundo %d", num1,num2);
 }
 else
 {
 	printf("O segundo número %d é maior que o primeiro %d", num2, num1);
 }
 return 0;
}