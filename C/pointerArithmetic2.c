#include <stdio.h>

int main(){
  int* px, * py;
  static int a[6] = {1,2,3,4,5,6};

  px = &a[0];
  py = &a[5];
  printf("px=%X;  py=%X  \n",px,py);
  printf("py - px = %X \n", py-px);
  /* Output
     px=601020;  py=601034  
     py - px = 5
  */
}
