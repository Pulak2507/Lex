#7. Program to recognize whether a given sentence is simple or compound.#
%{
#include<stdio.h>
Int is_simple=1;
%}
%%
[ \t\n]+[aA][nN][dD][ \t\n]+ {is_simple=0;}
[ \t\n]+[oO][rR][ \t\n]+ {is_simple=0;}
[ \t\n]+[bB][uU][tT][ \t\n]+ {is_simple=0;}
. {;}
%%
int yywrap()
{
return 1;
}
main()
{
int k;
printf(“Enter the sentence.. at end press ^d”);
yylex();
if(is_simple==1)
{
Printf(“The given sentence is simple”);
}
else
{
Printf(“The given sentence is compound”);
}
