%{
#include<stdio.h>
int i = 0;
%}
%%
[0-9]*[02468]	{printf("Even\n");}
[0-9]*[13579]	{printf("Odd\n");}
\n	{return 0;}
%%
int yywrap(void) {}
int main()
{
	yylex();
	
}
