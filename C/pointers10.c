// filename: pointers10.c

#include <stdio.h> 

int main(void){ 
	
    char ch = 'c'; 
    char *chptr = &ch; 
    int i = 20; 
    int *intptr = &i; 
    float f = 1.20000; 
    float *fptr = &f; 
    char *ptr = "I am a string"; 
    printf("\n [%c], [%d], [%f], [%c], [%s]\n", *chptr, *intptr, *fptr, *ptr, ptr);
    return 0; 
}
