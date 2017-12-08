// filename: funtionPointer1.c

#include <stdio.h>

void my_int_funct(int x){
    printf( "%d\n", x );
}

int main(){
    void (*funct)(int);
    /* the ampersand is actually optional */
    funct = &my_int_funct;
    funct(5);
    return 0;
}
