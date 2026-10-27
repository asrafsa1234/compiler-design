#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

int main(void){int ch,next,space=0;while((ch=getchar())!=EOF){if(ch=='/'){next=getchar();if(next=='/'){while((ch=getchar())!=EOF&&ch!='\n');continue;}if(next=='*'){int prev=0;while((ch=getchar())!=EOF){if(prev=='*'&&ch=='/')break;prev=ch;}continue;}if(next!=EOF)ungetc(next,stdin);}if(isspace(ch)){if(!space){putchar(' ');space=1;}}else{putchar(ch);space=0;}}putchar('\n');
return 0;}
