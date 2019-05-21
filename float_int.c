/* Provides an a way to see how floating points numbers 
   are constructed using sign bit + exponent + mantissa */





#include <stdio.h>

int main( void ) {

  float f = 13.5625;
  printf( "the bit config of %f is %x\n",f, * ( int* ) &f );

  int x = 0xC2578000;
  printf( "the bit config %x represents float %f\n",x, * (float*) &x );

  return 0;
}



