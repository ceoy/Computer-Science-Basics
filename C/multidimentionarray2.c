#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXSIZE 12

void sort(int size, char* x[]);

int main(){
  int i,n=0;
  char *arrayOfStrings[10];
  
  puts("Enter each string on a separate line");
  puts("Type control D to finished");
  int max=10;
  int size;
  do{
    arrayOfStrings[n]=(char*) malloc(MAXSIZE * sizeof(char));
    scanf("%s",arrayOfStrings[n]);
    size = strlen(arrayOfStrings[n]);
    n++;
  }while(size > 0);
  
  sort(--n,arrayOfStrings);
  
  printf("List of strings (after sort)\n");
  for(i=0;i<n;i++){
    printf("%d) %s\n",(i+1),arrayOfStrings[i]);
  }
  
}
/* Should sort, function to be written in exercise */
void sort(int size, char* x[]){
  return;
}
