%{
#include<stdio.h>
%}
%token ID
%left '+' '-' '*' '/'
%%
E:E'+'E
|E '-' E
|E '*' E
|E '/' E
|ID ;
%%
int main()
{
printf("Enter an arithmetic expression\n");
yyparse();
printf("Valid expression\n");
}
yyerror()
{
printf("Invalid expression\n");
exit(0);
}