#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){char s[2048];fgets(s,sizeof s,stdin);puts(strstr(s,"//")||strstr(s,"/*")?"Comment detected":"No comment detected");
return 0;}
