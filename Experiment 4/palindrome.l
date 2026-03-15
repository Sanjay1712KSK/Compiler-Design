%{
    #include <stdio.h>
    #include <string.h>
    int isPalindrome(char str[]){
        int i=0; int j=strlen(str)-1;
        while (i<j){
            if(str[i]!=str[j]){
                return 0;
            }
            i++; j--;
        }
        return 1;
    }
%}
%%
[a-zA-Z]+ {
    if (isPalindrome(yytext)){
        printf("%s is a Palindrome \n",yytext);
    }
    else{
        printf("%s is not a Palindrome \n",yytext);
    }
}
    \n return 0;
    . ;
%%
int main(){
    printf("Enter the word:\n");
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}