%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int macros=0,headers=0;
%}
%%
^[ \t]*"#define"[^\n]* {macros++;}
^[ \t]*"#include"[^\n]* {headers++;}
[0-9]+(\.[0-9]+)? {printf("Constant: %s\n",yytext);}
\n|. ;
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();printf("Macros: %d Headers: %d\n",macros,headers);return 0;}
