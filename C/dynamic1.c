#include <stdio.h>
#include <stdlib.h>

double avrge(double* marks, int size);

int main(){
	
  int i, n;
  double* marks;
  /* read in a value for n */

  puts("Number of marks:");
  scanf(" %d", &n);
  
  if(n>0){

    marks = (double *) malloc(n*sizeof(double));
  
    for(i=0;i<n;i++){
      printf("%d) Enter Mark:",(i+1));
      // equivalent to scanf(" %lf",&marks[i]);
      scanf(" %lf",marks+i);

    }
    double average = avrge(marks,n);
    printf("Average is:%lf\n",average);
    return 0;
  }
  printf("Need at least one number to make a mean!\n");
}


double avrge(double* marks, int size){
  double sum=0;
  int i;
  for(i=0;i<size;i++) sum += *(marks+i); // equivalent to marks[i]
  return sum/size;
}
