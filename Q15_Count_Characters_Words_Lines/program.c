#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){int ch,prev='\n',chars=0,words=0,lines=0,in=0;while((ch=getchar())!=EOF){chars++;lines+=ch=='\n';if(isspace(ch))in=0;else if(!in){words++;in=1;}prev=ch;}if(chars&&prev!='\n')lines++;printf("Characters: %d\nWords: %d\nLines: %d\n",chars,words,lines);
return 0;}
