%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int chars=0,words=0,lines=0;
%}
%%
[A-Za-z0-9_]+ {chars+=yyleng;words++;}
\n {chars++;lines++;}
. {chars++;}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();printf("Characters: %d\nWords: %d\nLines: %d\n",chars,words,lines);return 0;}
