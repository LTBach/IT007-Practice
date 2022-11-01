/*######################################
# University of Information Technology #
# IT007 Operating System #
# Luong Toan Bach, 21521845 #
# File: example_fork_wait.c #
######################################*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(){
	pid_t pid;
	pid = fork();
	if(pid == 0)
		printf("Child process, pid=%d\n",pid);
	else {
		wait(NULL);
	printf("Parent Proces, pid=%d\n",pid);
	}
exit(0);
}
