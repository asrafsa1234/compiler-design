%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}
%%
-?[0-9]+[ \t]*[+*/-][ \t]*-?[0-9]+ {int a,b;char op;sscanf(yytext,"%d %c %d",&a,&op,&b);if(op=='+')printf("%d\n",a+b);else if(op=='-')printf("%d\n",a-b);else if(op=='*')printf("%d\n",a*b);else if(b)printf("%d\n",a/b);else puts("Division by zero");}
[ \t\n]+ ;
. {puts("Invalid expression");}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();return 0;}
