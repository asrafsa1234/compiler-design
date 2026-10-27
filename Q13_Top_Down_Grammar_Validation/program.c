#include <stdio.h>
#include <string.h>
char s[200];int i;int S(void){if(s[i]=='a'){i++;if(!S())return 0;return s[i++]=='b';}return 1;}int main(void){scanf("%199s",s);i=0;int ok=S();puts(ok&&s[i]==0?"Accepted":"Rejected");return 0;}
