#include <stdio.h>

int main(){

  char c1 = 'A';
  char c2 = 'c';
  char c3 = '0';
  char c4 = '?';
  char c5 = '\n';

  printf("c1 as char = %c, as digital =%d, as hexa=%x\n",c1,c1,c1);
  printf("c2 as char = %c, as digital =%d, as hexa=%x\n",c2,c2,c2);
  printf("c3 as char = %c, as digital =%d, as hexa=%x\n",c3,c3,c3);
  printf("c4 as char = %c, as digital =%d, as hexa=%x\n",c4,c4,c4);
  printf("c5 as char = %c, as digital =%d, as hexa=%x\n",c5,c5,c5);

  // Examples for variables declaration and initializations
  // Integers and double precition floating numbers
  int a, b, c;
  double d1, d2, d3;
  a=100;
  b=0;
  c=0x100;
  d1=5.0;
  d2=4E3;
  d3=d1+d2*c;
  printf("d3 = %f\n",d3);

  a=200;
  a=2*a+b*c;

  // Examples of chars 
  char ch1, ch2;
  ch1='4';
  ch2='A';
  char ch3 = '\n';

  // And strings (arrays of chars)
  char str1[80];
  char str2[]="Biel / Bienne";

  char str3[10]="Ville de Bienne";
  char str4[]="Tooto\n";

  printf("Hello %s%c",str2,ch3); // Inserts a \n after the city name
  printf("Hello %s",str3); // 
  // Be carreful to reserve enough space
  
  return 0;
}
