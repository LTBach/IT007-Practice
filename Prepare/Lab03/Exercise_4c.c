#include <stdio.h>
#include <signal.h>

int loop_forever = 1;

void on_signal() {
        system("kill `pidof vim`");
        loop_forever = 0;
}

int main() {
        loop_forever = 1;
        signal(SIGINT, on_signal);
        while(loop_forever){}
        return 0;
}

