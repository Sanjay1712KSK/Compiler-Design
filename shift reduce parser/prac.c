#include <stdio.h>
#include <ctype.h>
#include <string.h>
int main(){
    char input[20],stack[20];
    int i=0,top=0;
    printf("Grammar is E+E|E*E|(E)|id \n");
    printf("Enter the input string :");
    scanf("%s",input);
    printf("Stack\tInput\tAction\n");
    while(1){
        if(i<strlen(input)){
            stack[top++]=input[i++];
            stack[top]='\0';
            printf("%s\t%s\tShift\n",stack,input+1);
        }
    }
}