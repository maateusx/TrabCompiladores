#include<stdio.h>

int main()
 {
 int n;
 int m;
 int x;
 n = 1;
 m = 2;
 x = 5;
 while(x > n)
 {
	if(n == m)
  	{
 		printf("%d ", n);
 	}
 	else
 	{
 		printf("0 ");
 	}
 	x = x - 1;
 }
}