%{
    #include <stdio.h>
%}
%%
"#include"[]*"<"[a-zA-Z0-9_.]+">" { printf("Preprocessor Directive: %s\n", yytext); }
"int"|"float"|"if"|"else"|"while"|"return"|"printf" {printf("Keyword %s : \n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifiers %s : \n",yytext);}
"*"|"/"|"-"|"=" {printf("Operators %s : \n",yytext);}
[0-9]+ {printf("Number: %s \n",yytext);}
[\t\n]
. {printf("Unknown: %s \n",yytext);}
%%
int yywrap(){
    return 1;
}
int main(){
    printf("Enter the input: \n");
    yylex();
    return 0;
}