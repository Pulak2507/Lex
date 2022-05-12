%{
#include<stdio.h>
int words = 0;
%}
%%
([a-zA-Z0-9])*	{words++;}
\n	{return 0;}
%%
int yywrap(void) {}
int main()
{
	yylex();
	printf("Number of words: %d\n",words);
}
