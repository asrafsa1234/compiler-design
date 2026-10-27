#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){int ch,s=0,t=0,n=0;while((ch=getchar())!=EOF){s+=ch==' ';t+=ch=='\t';n+=ch=='\n';}printf("Spaces: %d\nTabs: %d\nNewlines: %d\n",s,t,n);
return 0;}
