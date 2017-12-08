// filename: funtionPointer2.c

#include <stdio.h>

void my_int_func(int x){
    printf( "%d\n", x );
}

int main(){
    void (*funct)(int);
    funct = &my_int_func;
    /* call my_int_func (note that you do not need to write (*funct)(2) ) */
    funct( 2 );
    /* but if you want to, you may */
    (*funct)( 2 );
    return 0;
}