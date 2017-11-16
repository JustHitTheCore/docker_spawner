//gcc malloc.c -o malloc -m32
#include<unistd.h>
#include<stdlib.h>
#include<stdio.h>


int main()
{
	unsigned int *tab, n, k, v, PoC = 0;
	printf("PoC at %p\n",&PoC);
	printf("n: ");
	scanf("%u",&n);
	tab = malloc(n*sizeof(int));
	if(tab == 0)
		return 1;
	printf("Success! (%p)\n",tab);
	printf("tab[k]=v; k,v: ");
	scanf("%u%u",&k,&v);
	if(k<n)
		tab[k] = v;
	else
		puts("k>=n - FAIL");
	if(PoC == 1337)
		puts("Victory!");
}
