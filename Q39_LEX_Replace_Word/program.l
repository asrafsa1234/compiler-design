%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char old[100]="cat",newword[100]="dog";
%}
%%
[A-Za-z]+ {printf("%s",strcmp(yytext,old)==0?newword:yytext);}
\n|. {ECHO;}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");if(argc>2){snprintf(old,sizeof old,"%s",argv[1]);snprintf(newword,sizeof newword,"%s",argv[2]);}yylex();return 0;}
