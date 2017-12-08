#include <stdio.h>

int main(){

  int i1;
  int i2 = 4;
  i1 = 3;
  i1 = i2;
  i1 = i2 * 4;
  i1 = i2 + i1 + 5;
  
  int i, j;
  i = j = 5;
  printf("i=%d, j=%d\n",i,j);
  // Output : i=5, j=5

  int i3=0;
  i3 += 5; // i3 is 5
  i3 *= 2; // i3 is 10
  printf("i3=%d\n",i3);


  int i4 = (i3<0) ? 0 : 100;
  printf("i4=%d\n",i4);

  float f1 = 1.5;
  float f2 = 2.3;

  float fmin = (f1<f2) ? f1 : f2;
  printf("fmin=%f\n",fmin);
  
  return 0;
  
}
