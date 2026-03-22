#include <stdio.h>
#include <string.h>
int main(){
    char A, alpha[20],beta[20];
    printf("Enter the production : \n");
    scanf("%c->%[^|]|%[^\n",&A,alpha,beta);
    if(alpha[0]!=A){
        printf("No left recursion detected!!\n");
        return 0;
    }
    memmove(alpha,alpha+1,strlen(alpha));
    printf("After removing production \n");
    printf("%c->%s%c'\n",A,beta,A);
    printf("%c'->%s%c' | ε\n",A,alpha,A);
    return 0;
}