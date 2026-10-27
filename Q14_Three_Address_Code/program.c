#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){char dst[40],a[40],b[40],op;char line[200];fgets(line,sizeof line,stdin);if(sscanf(line," %39s = %39s %c %39s",dst,a,&op,b)==4&&strchr("+-*/",op)){printf("t1 = %s %c %s\n%s = t1\n",a,op,b,dst);}else puts("Format: x = a + b");
return 0;}
