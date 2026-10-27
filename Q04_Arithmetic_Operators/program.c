#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){int ch;while((ch=getchar())!=EOF)if(strchr("+-*/",ch))printf("Operator: %c\n",ch);
return 0;}
