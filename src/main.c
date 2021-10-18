#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "myshared.h"

int main(int argc, char* argv[]){
    if(argc < 2){ return EXIT_FAILURE; }
    while (1) {
        printf("%d\n", my_shared_function());
        sleep(atoi(argv[1]));
    }
    return EXIT_SUCCESS;
}