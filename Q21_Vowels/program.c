#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){int ch,n=0;while((ch=getchar())!=EOF){ch=tolower((unsigned char)ch);if(strchr("aeiou",ch))n++;}printf("Vowels: %d\n",n);
return 0;}
