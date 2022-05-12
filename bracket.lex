%{
#include<stdio.h>
int l=0, r=0, cbl=0, cbr=0; 
%}
%%
[(] l++;
[)] r++;
[{] cbl++;
[}] cbr++;
[a-zA-Z0-9]+
"\n" check();
%%
int yywrap() {};
int main()
{
    yylex();
}
check(){
    if(l-r==0)
    printf()
}