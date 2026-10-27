#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){char dst[40],a[40],b[40],op;char line[200];fgets(line,sizeof line,stdin);if(sscanf(line," %39s = %39s %c %39s",dst,a,&op,b)==4){printf("MOV R0, %s\n",a);printf("%s R0, %s\n",op=='+'?"ADD":op=='-'?"SUB":op=='*'?"MUL":op=='/'?"DIV":"UNKNOWN",b);printf("MOV %s, R0\n",dst);}else puts("Use x = a + b");
return 0;}
