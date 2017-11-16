//gcc signal.c -o signal
#include<signal.h>
#include<unistd.h>
#include<stdio.h>

int main(int c, char **args, char **env)
{
	if(getuid() == 11000)	//bandit0 not allowed
	{
		raise(SIGTERM);
	}
	execve(args[1],args+1,env);
}

