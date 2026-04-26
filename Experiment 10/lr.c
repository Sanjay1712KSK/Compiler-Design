// Program for Computation of LR(0) Items
#include <stdio.h>
#include <string.h>

int main()
{
    int n, i, j, k, len;
    char prod[20], left, right[20];

    printf("Enter number of productions: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++)
    {
        printf("Enter production %d (Ex: E->E+T): ", i + 1);
        scanf("%s", prod);

        left = prod[0];
        strcpy(right, prod + 3);   // skip E->

        len = strlen(right);

        printf("\nLR(0) Items for %c->%s\n", left, right);

        for(j = 0; j <= len; j++)
        {
            printf("%c->", left);

            for(k = 0; k < j; k++)
                printf("%c", right[k]);

            printf(".");

            for(k = j; k < len; k++)
                printf("%c", right[k]);

            printf("\n");
        }
        printf("\n");
    }

    return 0;
}