%{
#include<stdio.h>
int valid=1;
%}
%token A B
%%
str:S'\n' {return 0;}
S:A S B | A S | S B
|A
|B
|
;
%%
main()
{
printf("Enter the string:\n");
yyparse();
if(valid==1)
printf("\nvalid string");
}
int yyerror()
{
printf("Invalid String\n");
exit(0);
}