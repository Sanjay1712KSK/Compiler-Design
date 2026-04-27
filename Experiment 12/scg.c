// Simple Code Generator using gcc -S
#include <stdio.h>
#include <stdlib.h>

int main()
{
    char file[50], cmd[100];

    printf("Enter C file name: ");
    scanf("%s", file);

    sprintf(cmd, "gcc -S %s", file);   // generate assembly code
    system(cmd);

    printf("Machine code generated (.s file created)\n");

    return 0;
}