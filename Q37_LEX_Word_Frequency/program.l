%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <strings.h>
char target[100]="the";int count=0;
%}
%%
[A-Za-z]+ {if(!strcasecmp(yytext,target))count++;}
\n|. ;
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");if(argc>1)snprintf(target,sizeof target,"%s",argv[1]);yylex();printf("Frequency of %s: %d\n",target,count);return 0;}
