/*######################################
# University of Information Technology #
# IT007 Operating System #
# <Your name>, <your Student ID> #
# File: example_execl.c #
######################################*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
	execl("/usr/bin/gedit", "gedit", "foo.c", NULL);
	printf(“ERROR!!! execl() is failed!\n”);
	exit(1);
}
