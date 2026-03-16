%{
#include "y.tab.h"
#include <stdio.h>
%}

%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[ \t]       ;
\n          return 0;

"+"         return '+';
"-"         return '-';
"*"         return '*';
"/"         return '/';
"("         return '(';
")"         return ')';

.           { printf("Invalid character\n"); }
%%

int yywrap(){
    return 1;
}