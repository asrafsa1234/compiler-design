%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}
%%
^https?:\/\/[A-Za-z0-9.-]+\.[A-Za-z]{2,}([/:?#][^ \t\n]*)?\n? {puts("Valid URL");}
^.*\n? {puts("Invalid URL");}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();return 0;}
