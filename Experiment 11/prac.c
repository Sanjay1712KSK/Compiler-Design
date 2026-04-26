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
            while(ontop>=0 && ((exp[i]=='+'||exp[i]=='-') || (exp[i]=='*'||exp[i]=='/')&& (op[ontop]=='*'||op[ontop]=='/')) ){
                strcpy(arg2,stack[top--]);
                strcpy(arg1,stack[top--]);
                sprintf(res[k],'t%d',j++);
                strcpy(stack[top++],res[k]);
                op[k]=op[ontop--];
                k++;
            }
        }
    }
    while(ontop>=0){
        strcpy(arg2,stack[top--]);
        strcpy(arg1,stack[top--]);
        sprintf(res[k],'t%d',j++);
        strcpy(stack[top++],res[k]);
        op[k]=op[ontop--];
        k++;
    }
    printf("Quadruple\n");
    for(i=0;i<k;i++){
        printf("No\tOp\tArg1\tArg2\tResult\n");
        printf("%d\t%c\t%s\t%s",i+1,op[i],arg1[i],arg2[i],res[i]);
    }
    printf("Triple\n");
    for(i=0;i<k;i++){
        printf("No\tOp\tArg1\tArg2\n");
        printf("%d\t%c\t%s\t%s",i+1,op[i],arg1[i],arg2[i]);
    }
    printf("Indirect Triple\n");
    for(i=0;i<k;i++){
        printf("Pointer\tStatement No\n");
        printf("%d\t%d",i,i+1);        
    }
    return 0;
}
