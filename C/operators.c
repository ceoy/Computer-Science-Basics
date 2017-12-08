#include <stdio.h>

int main(){
	
  int i1=0;
  int i2=5;
  i1 = i1+2;
  i2 = i2++;

  // incrementation operator
  i1 = 35;
  printf("Value of i1=%d\n",i1);
  printf("Value of ++i1=%d\n",++i1);
  printf("Value of i1++=%d\n",i1++);
  printf("Value of i1=%d\n",i1);

  // Operator sizeof
  int j1;
  long l1;
  float f1;
  double d1;
  char str1[10]="Bienne";
  printf("size of j1 (int)=%ld\n",sizeof j1);
  printf("size of l1 (long)=%ld\n",sizeof l1);
  printf("size of f1 (float)=%ld\n",sizeof f1);
  printf("size of d1 (double)=%ld\n",sizeof d1);
  printf("size of str1 (String 10chars)=%ld\n",sizeof str1);

  char text[]="Canton of Bern";
  printf("size of text=%ld\n",sizeof text);

  i1=20;
  i2=22;

  if(i1<30 || i1>i2) puts("condition is true");
  else  // should not arrive, since i1<30
    puts("condition is false");
  
  return 0;
}
