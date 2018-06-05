%{
#include<stdio.h>
%}

%token LETTER DIGIT

%%
S:LETTER
| S DIGIT
| S LETTER;
%%

int main()
{
printf("Enter a variable\n");
yyparse();
printf("Valid Variable\n");
}
yyerror()
{
printf("Invalid variable\n");
exit(0);
}