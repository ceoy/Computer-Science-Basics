#include <stdio.h>

int main(){
	
  char str1[25]; // We reserve place in memory
  
  printf("Hello, what is your name? : ");
  scanf("%s", &str1); // We change the value in the memory
  printf("Hello %s\n", str1);
  return 0;
}
