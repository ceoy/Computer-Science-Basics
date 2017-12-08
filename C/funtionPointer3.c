// filename: funtionPointer3.c

#include <stdlib.h>

/* From the Linux man pages, we have the following declaration for qsort (from stdlib.h):
 void qsort(void *base, size_t nmemb, size_t size, int(*compar)(const void *, const void *));
 * 
 * Note the use of void*s to allow qsort to operate on any kind of data (in C++, you'd normally
 * use templates for this task, but C++ also allows the use of void* pointers) because
 * void* pointers can point to anything. Because we don't know the size of the individual
 * elements in a void* array, we must give qsort the number of elements, nmemb, of the array
 * to be sorted, base, in addition to the standard requirement of giving the length, size, of the input.
 * But what we're really interested in is the compar argument to qsort: it's a function pointer
 * that takes two void *s and returns an int. This allows anyone to specify how to sort the
 * elements of the array base without having to write a specialized sorting algorithm.
 * Note, also, that compar returns an int; the function pointed to should return -1 if
 * the first argument is less than the second, 0 if they are equal, or 1 if the second is less than the first.
 * For instance, to sort an array of numbers in ascending order, we could write code like this: 
*/

int int_sorter1( const void *first_arg, const void *second_arg ){
    int first = *(int*)first_arg;
    int second = *(int*)second_arg;
    if ( first < second ) return -1;
    else if ( first == second ) return 0;
    else return 1;
}

int int_sorter2( const void *first_arg, const void *second_arg ){
    int first = *(int*)first_arg;
    int second = *(int*)second_arg;
    if ( first > second ) return -1;
    else if ( first == second ) return 0;
    else return 1;
}

int main(){
    int array[10];
    int i;
    /* fill array */
    for ( i = 0; i < 10; ++i ) array[ i ] = 10 - i;

    qsort( array, 10 , sizeof( int ), int_sorter2 );
    for ( i = 0; i < 10; ++i ) printf ( "%d\n" ,array[ i ] );
    return 0;

}