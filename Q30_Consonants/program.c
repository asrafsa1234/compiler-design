#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){int ch,n=0;while((ch=getchar())!=EOF){ch=tolower((unsigned char)ch);if(ch>='a'&&ch<='z'&&!strchr("aeiou",ch))n++;}printf("Consonants: %d\n",n);
return 0;}
