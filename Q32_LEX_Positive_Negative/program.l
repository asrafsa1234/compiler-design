%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int pos=0,neg=0;
%}
%%
-[0-9]+(\.[0-9]+)? {neg++;printf("Negative: %s\n",yytext);}
\+?[0-9]+(\.[0-9]+)? {pos++;printf("Positive: %s\n",yytext);}
\n|. ;
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();printf("Positive: %d Negative: %d\n",pos,neg);return 0;}
