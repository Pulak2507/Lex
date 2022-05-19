%{
 #include "y.tab.h"
%}

%%
0 { return ZERO; }
11 { return ONES; }
\n { return NL ;}
. { return yytext[0]; }
%% 