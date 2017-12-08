#include <stdio.h>

int main(){
  char name [26];
  // stdio.h
  puts("What is your name?");
  scanf("%s",name);
  printf("Hello %s \n",name);
  return 0;
}
