#include <stdio.h>
#include <string.h>
#include <ctype.h>
char prod[10][10];
int n;
void first(char c){
    for (int i=0;i<n;i++){
        if(prod[i][0]==c){
            if(!isupper(prod[i][2])){
                printf("%s",prod[i][2]);
            }
            else{
                first(prod[i][2]);
            }
        }
    }
}
void follow(char c){
    if(prod[0][0]==c){
        printf("$ ");
    }
    for (int i=0;i<n;i++){
        for(int j=0;j<strlen(prod[i];j++)){
            if(prod[i][j]==c){
                if (prod[i][j+1]!='\0'){
                    printf("%c",prod[i][j+1]);
                }
                else if(c!=prod[i][0]){
                    follow(prod[i][0]);
                }
            }
        }
    }
}