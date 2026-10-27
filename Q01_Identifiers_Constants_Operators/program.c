#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){char s[2048],w[100];fgets(s,sizeof s,stdin);for(int i=0,j;s[i];){if(isspace((unsigned char)s[i])){i++;continue;}if(s[i]=='/'&&s[i+1]=='/')break;if(s[i]=='/'&&s[i+1]=='*'){i+=2;while(s[i]&&!(s[i]=='*'&&s[i+1]=='/'))i++;if(s[i])i+=2;continue;}j=0;if(isalpha((unsigned char)s[i])||s[i]=='_'){while(isalnum((unsigned char)s[i])||s[i]=='_'){if(j<99)w[j++]=s[i];i++;}w[j]=0;printf("Identifier: %s\n",w);}else if(isdigit((unsigned char)s[i])){while(isdigit((unsigned char)s[i])||s[i]=='.'){if(j<99)w[j++]=s[i];i++;}w[j]=0;printf("Constant: %s\n",w);}else{if(strchr("+-*/=%",s[i]))printf("Operator: %c\n",s[i]);i++;}}
return 0;}
