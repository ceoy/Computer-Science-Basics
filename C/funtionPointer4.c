// filename: funtionPointer4.c

#include <stdio.h>

void printA(int i){printf("AAAA %i\n",i);}
void printB(int i){printf("BBBB %i\n",i);}

void printSquare(int i, void (*pf)(int a)){
  int square = i*i;
  (*pf)(square);
}

int main(){
  int val;
  puts("type a number");
  scanf(" %d",&val);
  if((val%2)==0) printSquare(val,printA);
  else printSquare(val,printB);
  return 0;
}
