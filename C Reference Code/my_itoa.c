#include <stdio.h>
#include <string.h>

/* reverse: reverse strings in place */
void reverse( char s[] )
{
  int c, i, j;
  
  for( i = 0, j = strlen(s) - 1; i < j; i++, j-- ) {
    c = s[i];
    s[i] = s[j];
    s[j] = c;
  }
}

/* itoa: n to characters in s */
void my_itoa( int n, char s[] )
{
  int i, sign;

  if (( sign = n ) < 0 )
    n = -n;
  i=0;
  do {
    s[i++] = n % 10 + '0';
  } while (( n /= 10 ) > 0);

  if( sign < 0 )
    s[i++] = '-';
  s[i] = '\0';
  printf( "%s\n" , s );
  reverse(s);
}
