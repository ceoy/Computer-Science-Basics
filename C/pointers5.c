// filename: pointers5.c

#include <stdio.h>

void multiply(int* pi1, int* pi2);
int main(){
  int i1;
  int i2;
  puts("Enter two numbers");
  scanf(" %d %d",&i1,&i2);
  multiply(&i1, &i2);
  printf("i1=%d and i2=%d \n",i1, i2);
  return 0;
}
void multiply(int* pi1,int* pi2){
  *pi1 *= *pi2;
}


