// filename: pointers0.c

#include <stdio.h>

int main(){
  int a=1,b=2,c=3;
  int* pa;
  int* pb;
  int* pc;
  pa=&a;
  pb=&b;
  pc=&c;
  
  printf("a = %d   *pa=%d \n",a,*pa);
  printf("b = %d   *pc=%d \n",b,*pb);
  printf("c = %d   *pc=%d \n",c,*pc);
  return 0;
}

