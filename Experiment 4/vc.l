%{
#include <stdio.h>
int vowels=0; int consonants=0;
%}
%%
[aAeEiIoOuU] {vowels++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {consonants++;}
\t
\n {printf("vowels words: %d \n",vowels);
    printf("consonants words: %d \n",consonants);
    return 0;}
. ;
%%
int main(){
    printf("Enter the word to calculate the count;");
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}