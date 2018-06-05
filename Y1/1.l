%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
[a-zA-Z0-9]+ { return ID; }
.	{return yytext[0]; }
%%
int yywrap(void)
{
return 1;
}