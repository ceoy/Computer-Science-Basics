// filename: pointers6.c

#include <stdio.h>

int main(){
	
  static int x[10] = {10,11,12,13,14,15,16,17,18,19};

  int i;
  for( i = 0; i <= 9; ++i){
    printf("i = %d; x[%d] = %d; *(x+%d)=%d \n",i,i,x[i],i,*(x+i));
    printf("       &x[%d] = %X; x+%d=%X \n",i,&x[i],i,x+i);
  }
  return 0;
}
