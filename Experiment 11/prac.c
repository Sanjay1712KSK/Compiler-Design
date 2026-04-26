#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main(){
    char exp[50];
    char op[20];
    char arg1[20][10], arg2[20][10], res[20];
    char stack[20][10];
    int top=-1,i,j=1,k=0,ontop=-1;
    printf("Enter the expression :");
    scanf("%s",exp);
    for(i=0;exp[i]!='\0',i++){
        if(isalnum(exp[i])){
            stack[++top][0]=exp[i];
            stack[top][1]='\0';
        }
        else{
            while(ontop>=0 && ((exp[i]=='+')||exp[i])=='-')
        }
    }
}