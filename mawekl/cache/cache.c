#include<unistd.h>
#include<stdlib.h>
#include<stdio.h>

int main()
{
	puts("Clearing temporary files...");
	setresuid(geteuid(),geteuid(),geteuid());
	system("rm -rf /tmp");
}
