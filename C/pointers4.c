// filename: pointers4.c

#include <stdio.h>

void funct1(int u, int v);
void funct2(int *pu, int *pv);

int main(){
  int u = 1;
  int v = 3;
  puts("before calling functions");
  printf("u = %d; v = %d \n",u,v);
  funct1(u,v);
  puts("After funct1(u,v);");
  printf("u = %d; v = %d \n",u,v);
  funct2(&u,&v);
  puts("After funct2(&u,&v);");
  printf("u = %d; v = %d \n",u,v);
  return 0;
}
void funct1(int u, int v){
  u = 0;
  v = 0;
  return;
}
void funct2(int *pu, int *pv){
  *pu = 0;
  *pv = 0;
  return;
}
