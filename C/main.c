#include <stdio.h>
#include <stdlib.h>


typedef struct{
    int year;
    int month;
    int day;
}
    date
;
typedef struct{
    char* name;
    char*
        firstname
    ;
    date birth;
    date
        death;
}
    person
;

  int main(){
    person*
        emmanuel
        =
         malloc(
            sizeof
                (person));
    person* p2 =
        (person*) malloc(
            sizeof
                (person));
    emmanuel
    ->name="Benoist";
    emmanuel
    ->
    firstname
        ="Emmanuel";
    emmanuel
    ->death=(date){0,0,0};
    emmanuel
    ->birth=(date){1960,10,29};
    p2
    ->name = "Muster";
    p2
    ->
    firstname
        = "Hans";
    p2
    ->birth=(date){1890,1,1};
    p2
    ->death=(date){1918,11,11};
    person*
        list_of_persons
    [20]; // an array of persons
    list_of_persons
    [0]=
        emmanuel
        ;
    list_of_persons
    [1]=p2;
    printf("%s\n",
    list_of_persons
    [0]
    ->
    name);
    printf("%s\n",
    list_of_persons
    [1]
    ->
    name);
  return 0;
}