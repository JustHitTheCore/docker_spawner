#include<unistd.h>
#include<stdlib.h>
#include<stdio.h>

char passwd[11] = {0};
char admin = 0;

int main()
{
	gets(passwd);
	if(strncmp(passwd, "tajnehaslo", 10) == 0)
		admin = 1;
	setresuid(geteuid(),geteuid(),geteuid());
	system(admin?"bash":"");
}
