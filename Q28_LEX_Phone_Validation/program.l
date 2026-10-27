%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}
%%
^[6-9][0-9]{9}\n? {puts("Valid mobile");}
^.*\n? {puts("Invalid mobile");}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();return 0;}
