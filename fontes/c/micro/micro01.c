#include<stdio.h>

int main()
{
 float cel;
 float far;

 printf("Tabela de conversão: Celsius -> Fahrenheit\n");
 printf("Digite a temperatura em Celsius: ");
 scanf("%f", &cel);
 far = ((9*cel+160)/(5));
 printf("A nova temperatura é: %f F \n",far);
 return 0;
}