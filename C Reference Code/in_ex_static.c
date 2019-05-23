#include <stdio.h>

int main( void ) {
  
  int i = 0; // global variables.
  
  for ( printf("The value of i before next loop is %d\n", i ); i < 10; ++i ) {
    static int i = -10;
    i++;  
    printf("The value of i after this loop is  %d\n", i);
  }
  return 0;
}
