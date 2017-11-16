//gcc count.c -o count
#include<unistd.h>
#include<stdlib.h>
#include<stdio.h>

int PoC = 0;
int count[256];

int main()
{
	int n, i;
	char z;
	scanf("%d\n", &n);
	while(n--)
	{
		scanf("%c",&z);
		count[z]++;
	}
	for(i=0;i<256;i++)
	{
		if(count[i]==0)
			continue;
		printf("Znak [%c] wystapil %d razy.\n",i,count[i]);
	}
	
	if(PoC == 1337)
		puts("Victory!");
	
}
