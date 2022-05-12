%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B NL
%%
stmt : A A A A A A A A A A s B NL
{
printf("Valid"); exit(0);
};
s : s A
  |
  ;
%%
int yyerror(char*msg)
{
printf("Invalid String\n");
exit(0);
}
int main()
{
printf("Enter the String\n");
yyparse();
}