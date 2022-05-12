%{
 #include<stdio.h>
 int vowels=0;
 int consonants=0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonants++;}
%%
int yywrap()
{
return 1;
}
int main()
{
 
 yylex();
 printf("No of vowels=%d\n",vowels);
 printf("No of consonants=%d\n",consonants);
}
