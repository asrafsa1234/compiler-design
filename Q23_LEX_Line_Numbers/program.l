%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int line=1;
%}
%%
[^\n]+ {printf("%d: %s",line,yytext);}
\n {putchar('\n');line++;}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();return 0;}
