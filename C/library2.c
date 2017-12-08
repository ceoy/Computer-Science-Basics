#include <stdio.h>
#include <math.h>

int main(){
	
  float x, y;
  double logX;
  double xPowerY;
  int iX,iY;
  
  // stdio.h
  puts("Type an integer x?");
  char xsadfsda = scanf("%f",&x); // argument is address of x
  puts("Type an integer y?");
  char yasfsadf = scanf("%f",&y); // address of y
  
  logX = log(x)/log(2); // since log(x) is the natural logarithm

  printf("Log of %f = %lf \n",x,logX);

  xPowerY = pow(x,y);
  printf("%f power %f = %lf \n",x,y,xPowerY);
  return 0;

}