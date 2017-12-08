// filename: pointers3.c

#include <stdio.h>

int main(){
  int v = 3;
  int *pv; /* pv is a pointer to v */
  pv = &v;
  printf("*pv = %d;  v = %d \n",*pv,v);

  *pv = 0;
  printf("*pv = %d;  v = %d \n",*pv,v);
  return 0;

  /* Output:
   *pv = 3;  v = 3 
   *pv = 0;  v = 0
   */

}
