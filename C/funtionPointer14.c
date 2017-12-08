// filename: funtionPointer14.c

#include <stdio.h>
int salaryhike(int  *var, int hike)
{
      *var = *var+hike;
      return *var;
}

int main()
{
      int sal=0;
      int hike=0;
      printf("Enter the employee current salary:");
      scanf("%d", &sal);
      printf("Enter hike amount:");
      scanf("%d", &hike);
      int op = salaryhike (&sal, hike);
      printf("Final salary: %d", op);
 return 0;
}