// Dynamic Intermediate Code Generation
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main()
{
    char exp[50];
    char op[20];
    char arg1[20][10], arg2[20][10], res[20][10];
    char stack[20][10];

    int top = -1, i, j = 1, k = 0, optop = -1;

    printf("Enter Expression: ");
    scanf("%s", exp);

    for(i = 0; exp[i] != '\0'; i++)
    {
        if(isalnum(exp[i]))
        {
            stack[++top][0] = exp[i];
            stack[top][1] = '\0';
        }
        else
        {
            while(optop >= 0 &&
                 ((exp[i]=='+' || exp[i]=='-') ||
                 ((exp[i]=='*' || exp[i]=='/') &&
                 (op[optop]=='*' || op[optop]=='/'))))
            {
                strcpy(arg2[k], stack[top--]);
                strcpy(arg1[k], stack[top--]);

                sprintf(res[k], "t%d", j++);
                strcpy(stack[++top], res[k]);

                op[k] = op[optop--];
                k++;
            }

            op[++optop] = exp[i];
        }
    }

    while(optop >= 0)
    {
        strcpy(arg2[k], stack[top--]);
        strcpy(arg1[k], stack[top--]);

        sprintf(res[k], "t%d", j++);
        strcpy(stack[++top], res[k]);

        op[k] = op[optop--];
        k++;
    }

    printf("\nQUADRUPLE:\n");
    printf("No\tOp\tArg1\tArg2\tResult\n");
    for(i=0;i<k;i++)
        printf("%d\t%c\t%s\t%s\t%s\n", i+1, op[i], arg1[i], arg2[i], res[i]);

    printf("\nTRIPLE:\n");
    printf("No\tOp\tArg1\tArg2\n");
    for(i=0;i<k;i++)
        printf("%d\t%c\t%s\t%s\n", i+1, op[i], arg1[i], arg2[i]);

    printf("\nINDIRECT TRIPLE:\n");
    printf("Pointer\tStatement No\n");
    for(i=0;i<k;i++)
        printf("%d\t%d\n", i, i+1);

    return 0;
}