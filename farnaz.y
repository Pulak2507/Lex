%token ZERO ONES NL

%%
stmt : S NL { printf("Valid Expression"); exit(0);}
;

S : | ZERO ONES
    | ZERO S ONES
;
%%

int yyerror(char *msg){
    printf("Invalid Expression\n");
    exit(0);
}

main (){
    printf("Enter the expression\n");
    yyparse();
}