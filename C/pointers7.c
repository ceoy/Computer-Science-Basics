#include <stdio.h>
#include <string.h>

main(){
  char line[80];
  char copy1[80];
  char copy2[80];
  char copy3[80];
  char copy4[80];
  char copy5[80];

  puts("Enter line");
  scanf(" %[^\n]",line);

  /* Function for reading the length of a string */
  int length = strlen(line); 
  
  int i;
  /* We add one to copy the '\0' */
  for(i=0;i<length+1 ; i++){
    copy1[i]=line[i];
    
  }

  for(i=0;i<length+1 ; i++){
    copy2[i]=*(line+i);
    
  }


  for(i=0;i<length+1 ; i++){
    *(copy3 + i)=*(line + i);
    
  }


  for(i=0;i<length+1 ; i++){
    *(copy4 + i)=line[i];
    
  }

  /* substring, without copy, same memory part */
  char* p1 = &line[2]; 
  char* p2 = line+2;
  
  printf("line = %s\n",line);
  printf("Copy1 = %s\n",copy1);
  printf("Copy2 = %s\n",copy2);
  printf("Copy3 = %s\n",copy3);
  printf("Copy4 = %s\n",copy4);
  printf("p1 = %s\n",p1);
  printf("p2 = %s\n",p2);

}
/* Ouptput
bie1@VirtualBox:~/pointers$ ./pointers7
Enter line
Emmanuel Benoist
line = Emmanuel Benoist
Copy1 = Emmanuel Benoist
Copy2 = Emmanuel Benoist
Copy3 = Emmanuel Benoist
Copy4 = Emmanuel Benoist
p1 = manuel Benoist
p2 = manuel Benoist

 */
