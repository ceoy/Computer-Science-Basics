// filename: mallocAndStructuresSample1.c

#include<stdio.h>

	typedef struct rec{
    		int i;
    		float PI;
    		char A;
	}RECORD;

	int main(){
    		RECORD *ptr_one;
    		ptr_one = (RECORD *) malloc (sizeof(RECORD));
    		(*ptr_one).i = 10;
    		(*ptr_one).PI = 3.14;
    		(*ptr_one).A = 'a';
    		printf("First value: %d\n",(*ptr_one).i);
    		printf("Second value: %f\n", (*ptr_one).PI);
    		printf("Third value: %c\n", (*ptr_one).A);
    		free(ptr_one);
    		return 0;
	}
