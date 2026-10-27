#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){char s[100];scanf("%99s",s);int valid=isalpha((unsigned char)s[0])||s[0]=='_';for(int i=1;s[i];i++)if(!isalnum((unsigned char)s[i])&&s[i]!='_')valid=0;char *k[]={"int","float","char","void","return","if","else","while"};for(int i=0;i<8;i++)if(!strcmp(s,k[i]))valid=0;puts(valid?"Valid":"Invalid");
return 0;}
