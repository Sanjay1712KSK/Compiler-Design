#include <stdio.h>
#include <string.h>
#include <ctype.h>
char prod[10][10];
int n;
void first(char c){
    for(int i=0;i<n;i++){
        if(prod[i][0]==c){
            if(!isupper(prod[i][2])){
                printf("%c",prod[i][2]);
            }
            else{
                first(prod[i][2]);
            }
        }
    }
}
void follow(char c){
    if(prod[0][0]==c)
        printf("$ ");
    
    for(int i=0;i<n;i++){
        for(int j=2;j<strlen(prod[i]);j++){
            if(prod[i][j]==c){
                if(prod[i][j+1]!='\0')
                    printf("%c ",prod[i][j+1]);
                else if(c!=prod[i][0])
                    follow(prod[i][0]);
            }
        }
    }
}
void table(){

    printf("\nPredictive Parsing Table\n");

    for(int i=0;i<n;i++){

        char A = prod[i][0];     // LHS
        char a = prod[i][2];     // first symbol of RHS

        if(!isupper(a) && a!='$'){
            printf("M[%c,%c] = %s\n",A,a,prod[i]);
        }

        else if(a=='$'){
            printf("Use FOLLOW(%c)\n",A);
            follow(A);
            printf("\n");
        }

        else{
            printf("Use FIRST(%c)\n",a);
            first(a);
            printf("\n");
        }
    }
}
int main(){
    char c;
    printf("Enter the number of productions: \n");
    scanf("%d",&n);
    printf("Enter the productions here!!\n");
    for(int i=0;i<n;i++){
        scanf("%s",prod[i]);
    }
    printf("\nFIRST Sets\n");
    for(int i=0;i<n;i++){
        c=prod[i][0];
        printf("FIRST(%c)={",c);
        first(c);
        printf("}\n");
    }
    printf("\nFOLLOW Sets\n");
    for(int i=0;i<n;i++){
        c=prod[i][0];
        printf("FOLLOW(%c)={",c);
        follow(c);
        printf("}\n");
    }
    table();
    return 0;
}