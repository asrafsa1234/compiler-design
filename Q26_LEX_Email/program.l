%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}
%%
^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\n? {puts("Valid email");}
^.*\n? {puts("Invalid email");}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();return 0;}
