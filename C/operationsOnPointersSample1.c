// filename: operationsOnPointersSample1.c

#include <stdio.h>

int main(){
	
  int* px;
  int i = 1;
  float f= 0.3;
  double d=0.005;
  char c = '*';
  px=&i;
  printf("Values: i=%i f=%f d=%f c=%c\n",i,f,d,c);
  printf("Addresses: i=%lX f=%lX d=%lX c=%lX\n",&i,&f,&d,&c);
  printf("Pointer Values (size of int = %d):\n px=%lX; px+1=%lX; px+2=%lX; px+3=%lX\n",sizeof(int),px,px+1,px+2,px+3);
  printf("Dereference: at px+1=%lX, value is:%f \n",px+1,*(px+1));
  return 0;
  
}

