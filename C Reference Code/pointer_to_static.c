#include <stdio.h>


int * ptr;
int balance = 100;


int check_balance(){

  static int count = 0;
  count++;
  ptr = &count;
  return balance;
}


int main(void) {
 check_balance();
 check_balance();
 check_balance();
 check_balance();
 printf( "user has checked his balance for %d times\n", *ptr );

}



