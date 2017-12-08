#include <stdio.h>

int main(){
  
  printf("Hello, compute the square of a number\n");
  printf("What number? ");
  int number; /* We reserve memory */
  scanf("%d", &number); /* We set the value inside memory */
  printf("The square of %d is %d\n",number,number*number);
  return 0;
}
