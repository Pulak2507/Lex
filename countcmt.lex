/*Program to count the no of comment line in a given C program. Also eliminate them and copy that program into separate file*/
%{
#include<stdio.h>
int com=0;
%}
%s COMMENT
%%
"/*"[.]*"*/" {com++;}
"/*" {BEGIN COMMENT ;}
<COMMENT>"*/" {BEGIN 0; com++ ;}
<COMMENT>\n {com++ ;}
<COMMENT>. {;}
.|\n {fprintf(yyout,"%s",yytext);
%%
int yywrap()
{
return 1;
}
int main(int argc, char*argv[])
{
if(argc!=2)
{
	printf("Usage: <./a.out> <sourcefile> <destn file>\n");
	exit(0);
}
	yyin=fopen(argv[1],"r");
	yyout=fopen(argv[2],"w");
	yylex();
	printf("No of comment lines=%d\n",com);
}
