%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}
%%
^[0-9]{2}"/"[0-9]{2}"/"[0-9]{4}\n? {int d,m,y;sscanf(yytext,"%d/%d/%d",&d,&m,&y);int days[]={0,31,28,31,30,31,30,31,31,30,31,30,31};if(y%400==0||(y%4==0&&y%100!=0))days[2]=29;puts(y>=1900&&y<=2100&&m>=1&&m<=12&&d>=1&&d<=days[m]?"Valid DOB":"Invalid DOB");}
^.*\n? {puts("Invalid DOB");}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();return 0;}
