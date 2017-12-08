// filename: pointers1.c

#include <stdio.h>

int main(){
  int w;
  int u = 3;
  int v;
  int *pu; /* pointer to an integer */
  int *pv; /* pointer to an integer */
  int *pw; /* pointer to an integer */
 
  pu = &u;  /* assign address of u to pu */
  v = *pu; /* assign value of u to v */
  pv = &v; /* assign addresse of v to pv */
  pw= &w;

  printf("u = %d   &u=%lX  pu=%lX   *pu=%d\n",u,&u,pu,*pu);
  printf("v = %d   &v=%lX  pv=%lX   *pv=%d\n",v,&v,pv,*pv);
  printf("w = %d   &v=%lX  pv=%lX   *pv=%d\n",w,&w,pw,*pw);
  return 0;
}

