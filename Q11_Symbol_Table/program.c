#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){char a[100][40],v[40];int n=0,op;while(scanf("%d",&op)==1&&op!=4){if(op==1){scanf("%39s",v);int found=0;for(int i=0;i<n;i++)if(!strcmp(a[i],v))found=1;if(found)puts("Duplicate");else if(n<100){strcpy(a[n++],v);puts("Inserted");}}else if(op==2){scanf("%39s",v);int found=0;for(int i=0;i<n;i++)if(!strcmp(a[i],v))found=1;puts(found?"Found":"Not found");}else if(op==3)for(int i=0;i<n;i++)printf("%d %s\n",i+1,a[i]);}
return 0;}
