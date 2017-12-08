// filename: mulDimArraySample1.c

#include <stdio.h>
#include <stdlib.h>
#define MAXROWS 4

int main(){
	
  int cols, rows;
  int *a[MAXROWS]; // this is done at compile time
  
  puts("Number of cols:");
  scanf(" %d",&cols);
  puts("Number of rows:");
  scanf(" %d", &rows);
  
  int row;
  for(row = 0; row < rows ; row++) a[row]= (int *) malloc (cols* sizeof(int));
                                // this is done at runtime
  printf("Enter table: ");
  int r,c;
  for(r=0;r<rows;r++){
    for(c=0;c<cols;c++){
      printf("val (%d,%d)=",r,c);
      scanf(" %d",(*(a+r)+c));  // scanf wants an address:
                                // *((a+r)+c) gets the content of the pointer (a+r)+c what is a pointer to int
                                // and (*((a+r)+c)) is the address of this pointer
    }
  }
  for(r=0;r<rows;r++){
    for(c=0;c<cols;c++) printf(" val a[%d][%d]=%d",r,c,a[r][c]);
    putchar('\n');
  }
  puts("Other view of the same array");
  for(r=0;r<rows;r++){
    for(c=0;c<cols;c++) printf(" val *(*(a+%d)+%d)=%d",r,c,*(*(a+r)+c)); // here we have to give an int
                                                                         // ==> *() gives us acces to the content pointed by the pointer
    putchar('\n');
  }
}



