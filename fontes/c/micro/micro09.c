#include<stdio.h>

int main()
{
 float preco;
 float venda;
 float novo_preco;

 printf("Digite o preço: ");
 scanf("%f", &preco);
 printf("Digite a venda: ");
 scanf("%f", &venda);
 if((venda < 500) || (preco < 30))
 {
 	novo_preco = (preco + 0.1*preco);
 }
 else if((venda >= 500 && venda < 1200) || (preco >= 30 && preco <80))
 {
 	novo_preco = (preco + 0.15*preco);
 }
 else if(venda >= 1200 || preco >= 80)
 {
 	novo_preco = (preco - 0.2*preco);
 }
 printf("O novo preço é: %f", novo_preco);

 return 0;
}