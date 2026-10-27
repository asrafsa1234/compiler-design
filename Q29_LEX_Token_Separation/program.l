%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}
%%
"#include"[^\n]* {printf("Header: %s\n",yytext);}
"int"|"void"|"return"|"char"|"float" {printf("Keyword: %s\n",yytext);}
[0-9]+(\.[0-9]+)? {printf("Number: %s\n",yytext);}
\"([^\"\\]|\\.)*\" {printf("String: %s\n",yytext);}
[A-Za-z_][A-Za-z0-9_]* {printf("Identifier: %s\n",yytext);}
[+*/=-] {printf("Operator: %s\n",yytext);}
[(){};,] {printf("Delimiter: %s\n",yytext);}
[ \t\n]+ ;
. {printf("Other: %s\n",yytext);}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();return 0;}
