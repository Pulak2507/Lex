%{
	#include<stdio.h>
	int vowels=0;
    int numb = 0;
	int consonants=0;
%}
%%

[aeiouAEIOU][aeiouAEIOU] {vowels++;}
[a-zA-Z][a-zA-Z] {consonants++;}
[0-9] {numb++;}
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Enter the string.. at end press^d\n");
	yylex();
	printf("No. of vowels=%d\n No. of consonants=%d\n  No. of numbers=%d\n",vowels,consonants,numb);
}
