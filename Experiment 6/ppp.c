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