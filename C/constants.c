#include <stdio.h>

int main(){

  int i1 = 12345;
  int i2 = 0;
  int i3 = -145;
  int i4 = 234;
  puts("Integer values");
  printf("i1 = %d, i2=%d, i3=%d, i4=%d\n",i1,i2,i3,i4);

  int j1 = 0;
  int j2 = 017;
  int j3 = 07777;
  printf("j1 = %d, j2=%d, j3=%d\n",j1,j2,j3);
  /* Output: j1 = 0, j2=15, j3=4095  */

  int k1 = 0xA;
  int k2 = 0x10;
  int k3 = -0xFFFF;
  int k4 = 0x10000;

  printf("k1 = %d, k2=%d, k3=%d, k4=%d\n",k1,k2,k3,k4);
  /* Output: k1 = 10, k2=16, k3=-65535, k4=65536 */

  puts("(or written in hexadecimal):");
  printf("k1 = %x, k2=%x, k3=%x, k4=%x\n",k1,k2,k3,k4);
  /* Output: k1 = a, k2=10, k3=ffff0001, k4=10000 */

  /* Largest integer */
  int k5 = 0x7FFFFFFF;
  /* Smallest integer */
  int k6 = 0x80000000;
  printf("MAXINT= %x, (%d),MININT=%x,(%d) \n",k5,k5,k6,k6);

  long l1 = 10;
  long l2 = -20;
  long l3 = 0xFFFFFFFFFFF;
  printf("l1 = %ld, l2=%ld, l3=%ld\n",l1,l2,l3);

  unsigned long ul1 = 0xFFFFFFFFFFFFFFFF;
  long l4=-1;
  printf("ul1 = %ld, l4=%ld\n",ul1,l4);
  printf("ul1 = %lu, l4=%lu\n",ul1,l4);
  printf("ul1 = %lx, l4=%lx\n",ul1,l4);
  /* Output : ul1 = -1, l4=-1  */
  
  return 0;
}
