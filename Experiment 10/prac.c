#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main(){
    int i,j,k,len,n;
    char prod[20],left,right[20];
    printf("Enter the number of productions :");
    scanf("%d",&n);
    for(i=0;i<n;i++){
        printf("Enter the productions %d : ",i+1);
        scanf("%s",prod);
        left=prod[0];
        strcpy(right,prod+3);
        len=strlen(right);
        printf("LR[0] Items %c->%s\n",left,right);
        for(j=0;j<=len;j++){
            printf("%c->",left);
            for(k=0;k<j;k++){
                printf("%c->",right[k]);
            }
                printf(".");
            for (k=j;k<len;k++){
                printf("%c->",right[k]);
            }
            printf("\n");
        }
    }
    return 0;
}