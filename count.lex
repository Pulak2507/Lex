/*Program to count the number of vowels and consonants in a given string.*/
%{
#include<stdio.h>
int vowels=0;
int cons=0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {cons++;}
%%
int yywrap()
{
return 1;
}
int main()
{
printf("Enter the string (at end press ctrl+d):\n");
yylex();
printf("No of vowels=%d\nNo of consonants=%d\n",vowels,cons);
}

