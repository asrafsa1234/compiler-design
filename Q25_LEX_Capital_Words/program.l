%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}
%%
[A-Z]+ {printf("Capital word: %s\n",yytext);}
[A-Za-z]+ ;
\n|. ;
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();return 0;}
