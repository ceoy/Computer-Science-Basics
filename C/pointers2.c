// filename: pointers2.c

#include <stdio.h>

int main(){
  int u1, u2;
  int v = 3;
  int *pv; /* pv is a pointer to v */
  u1 = 2 * (v + 5);
  pv = &v;
  u2 = 2 *(*pv + 5);
  printf("u1 = %d;  u2 = %d \n",u1,u2);
  return 0;
}
