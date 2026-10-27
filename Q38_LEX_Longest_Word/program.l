%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char longest[1000]="";
%}
%%
[A-Za-z]+ {if(yyleng>strlen(longest)&&yyleng<999)strcpy(longest,yytext);}
\n|. ;
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();printf("Longest word: %s (%zu)\n",longest,strlen(longest));return 0;}
