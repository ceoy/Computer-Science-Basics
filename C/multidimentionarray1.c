#include <stdio.h>
#include <stdlib.h>

#define MAXROWS 4

int main(){
  int cols, rows;
  int *a[MAXROWS];

  puts("Number of cols:");
  scanf(" %d",&cols);
  puts("Number of rows:");
  scanf(" %d", &rows);

  int row;
  for(row = 0; row < rows ; row++){
    a[row]= (int *) malloc (cols* sizeof(int));
  }
  printf("Enter table");

  int r,c;
  for(r=0;r<rows;r++){
    for(c=0;c<cols;c++){
      printf("val (%d,%d)=",r,c);
      scanf(" %d",(*(a+r)+c));
    }
  }
  
  for(r=0;r<rows;r++){
    for(c=0;c<cols;c++){
      printf(" val a[%d][%d]=%d",r,c,a[r][c]);

    }
    putchar('\n');
  }
  puts("other view of the same array");
  for(r=0;r<rows;r++){
    for(c=0;c<cols;c++){
      printf(" val *(*(a+%d)+%d)=%d",r,c,*(*(a+r)+c));

    }
    putchar('\n');
  }


  /* Output
     Number of cols:
     2
     Number of rows:
     3
     Enter tableval (0,0)=1
     val (0,1)=2
     val (1,0)=3
     val (1,1)=4
     val (2,0)=5
     val (2,1)=6
     val a[0][0]=1 val a[0][1]=2
     val a[1][0]=3 val a[1][1]=4
     val a[2][0]=5 val a[2][1]=6
     other view of the same array
     val *(*(a+0)+0)=1 val *(*(a+0)+1)=2
     val *(*(a+1)+0)=3 val *(*(a+1)+1)=4
     val *(*(a+2)+0)=5 val *(*(a+2)+1)=6
  */
}
