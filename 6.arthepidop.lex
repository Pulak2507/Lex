#6. Program to recognize a valid arithmetic expression and identify the identifiers and operators present. Print them separately.#
%{
#include<stdio.h>
#include<string.h>
int noprt=0, nopnd=0, valid=1, top=-1, m, l=0, j=0;
char opnd[10][10], oprt[10][10], a[100];
%}
%%
“(“ { top++; a[top]=’(‘ ; }
“{“ { top++; a[top]=’{‘ ; }
“[“ { top++; a[top]=’[‘ ; }
“)” { if(a[top]!=’(‘)
{
valid=0; return;
}
else
top--;
}
“}” { if(a[top]!=’{‘)
{
valid=0; return;
}
else
top--;
}
“]” { if(a[top]!=’[‘)
{
valid=0; return;
}
else
top--;
}
“+”|”-“|”*”|”/” { noprt++;
strcpy(oprt[l], yytext);
l++;
}
[0-9]+|[a-zA-Z][a-zA-Z0-9_]* {nopnd++;
- 7 -
strcpy(opnd[j],yytext);
j++;
}
%%
int yywrap()
{
return 1;
}
main()
{
int k;
printf(“Enter the expression.. at end press ^d\n”);
yylex();
if(valid==1 && i==-1 && (nopnd-noprt)==1)
{
printf(“The expression is valid\n”);
printf(“The operators are\n”);
for(k=0;k<l;k++)
Printf(“%s\n”,oprt[k]);
for(k=0;k<l;k++)
Printf(“%s\n”,opnd[k]);
}
else
Printf(“The expression is invalid”);
}
