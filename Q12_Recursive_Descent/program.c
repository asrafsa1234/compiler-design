#include <stdio.h>
#include <ctype.h>
char s[500];int i=0;int E(void);int F(void){if(s[i]=='('){i++;if(!E()||s[i]!=')')return 0;i++;return 1;}if(isalpha((unsigned char)s[i])||s[i]=='_'){while(isalnum((unsigned char)s[i])||s[i]=='_')i++;return 1;}return 0;}int T(void){if(!F())return 0;while(s[i]=='*'){i++;if(!F())return 0;}return 1;}int E(void){if(!T())return 0;while(s[i]=='+'){i++;if(!T())return 0;}return 1;}int main(void){fgets(s,sizeof s,stdin);int j=0;for(int k=0;s[k];k++)if(!isspace((unsigned char)s[k]))s[j++]=s[k];s[j]=0;puts(E()&&s[i]==0?"Accepted":"Rejected");return 0;}
