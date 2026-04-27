// Shift Reduce Parser in C
#include <stdio.h>
#include <string.h>

int main()
{
    char input[20], stack[20];
    int i = 0, top = 0;

    printf("Grammar: E -> E+E | E*E | (E) | id\n");
    printf("Enter input string: ");
    scanf("%s", input);

    printf("\nStack\tInput\tAction\n");

    while(1)
    {
        if(i < strlen(input))
        {
            stack[top++] = input[i++];
            stack[top] = '\0';
            printf("%s\t%s\tShift\n", stack, input + i);
        }

        if(top >= 2 && stack[top-2]=='i' && stack[top-1]=='d')
        {
            stack[top-2] = 'E';
            top--;
            stack[top] = '\0';
            printf("%s\t%s\tReduce E->id\n", stack, input + i);
        }

        if(top >= 3 && stack[top-3]=='E' && stack[top-2]=='+' && stack[top-1]=='E')
        {
            stack[top-3] = 'E';
            top -= 2;
            stack[top] = '\0';
            printf("%s\t%s\tReduce E->E+E\n", stack, input + i);
        }

        if(top >= 3 && stack[top-3]=='E' && stack[top-2]=='*' && stack[top-1]=='E')
        {
            stack[top-3] = 'E';
            top -= 2;
            stack[top] = '\0';
            printf("%s\t%s\tReduce E->E*E\n", stack, input + i);
        }

        if(top >= 3 && stack[top-3]=='(' && stack[top-2]=='E' && stack[top-1]==')')
        {
            stack[top-3] = 'E';
            top -= 2;
            stack[top] = '\0';
            printf("%s\t%s\tReduce E->(E)\n", stack, input + i);
        }

        if(i == strlen(input) && top == 1 && stack[0]=='E')
        {
            printf("%s\t%s\tAccepted\n", stack, "");
            break;
        }

        if(i == strlen(input) && top != 1)
        {
            printf("%s\t%s\tRejected\n", stack, "");
            break;
        }
    }

    return 0;
}