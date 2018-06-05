%{
#include<stdio.h>
int id=0;
%}
%%
[a-zA-Z][a-zA-Z0-9_]* { id++ ; ECHO; printf("\n");}
.+ { ;}
\n { ;}
%%
int main ()
{
yyin=fopen("input.txt","r");
printf("Valid identifires are\n");
yylex();
printf("No of identifiers = %d\n",id);
}