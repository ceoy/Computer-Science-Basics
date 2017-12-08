// filename: funtionPointer16.c

#include <stdio.h> 

int func1 (int a, int b)
{
    printf("\n a = %d\n",a);
    printf("\n b = %d\n",b); 
    return 0;
} 

int func2 (int a, int b)
{
    printf("\n a = %d\n",a*a);
    printf("\n b = %d\n",b*b); 
    return 0;
}

int main(void)
{
    int(*fptr)(int,int); // Function pointer 
    fptr = func1; // Assign address to function pointer 
    func1(2,3);
    fptr(2,3); 
    
    fptr = func2; // Assign address to function pointer 
    func2(2,3);
    fptr(2,3);
    return 0;
}