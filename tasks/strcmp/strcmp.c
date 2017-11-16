#include<unistd.h>
#include<string.h>

int main(int c, char **args, char **env)
{
	if (strncmp(args[1], "tajnehaslo", 10) == 0)
	{
		execve(args[2],args+2,env);
	}
}
