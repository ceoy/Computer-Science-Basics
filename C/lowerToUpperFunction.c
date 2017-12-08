// filename: lowerToUpperFuntion.c

#include <stdio.h>

// FUNCTION HEADERS - *****************************************
char lower2upper(char c);
// FUNCTION HEADERS - *****************************************


int main(int argc, char **argv){
	puts("Enter your string: ");
	char c1;
	while(scanf("%c",&c1)!=EOF){
		c1 = lower2upper(c1);
		printf("%c",c1);
	}
	return 0;
}

// HELPER FUNCTIONS - *****************************************
char lower2upper(char c){
	int delta = ’A’-’a’;
	char res=c;
	if((c>=’a’) && (c<=’z’)) res += delta;
	return res;
}
// HELPER FUNCTIONS - *****************************************


