%option noyywrap
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int count=0;
%}
%x COMMENT
%%
"//"[^\n]* {count++;}
"/*" {count++;BEGIN(COMMENT);}
<COMMENT>"*/" {BEGIN(INITIAL);}
<COMMENT>\n {ECHO;}
<COMMENT>. ;
\n|. {ECHO;}
%%
int main(int argc,char **argv){if(argc>1)yyin=fopen(argv[1],"r");yylex();fprintf(stderr,"Comments removed: %d\n",count);return 0;}
