#include<stdio.h>

int main()
{
 char nome[50];
 int x;
 int h = 0;
 int m = 0;
 int op;

 for(x = 0; x < 5; x++)
 {
	printf("Digite o nome: ");
	scanf("%s", nome);
	printf("1 - Homem ou 2 - Mulher: ");
	scanf("%d", &op);
	switch(op)
	{
		case 1:
			h = h + 1;
			break;
		case 2:
			m = m + 1;
			break;
		default:
			printf("Sexo só pode ser Homem(1) ou Mulher(2)!\n");
			break;
	}
 }
 printf("Foram inseridos %d Homens.\n", h);
 printf("Foram inseridos %d Mulheres.\n", m);

 return 0;
}