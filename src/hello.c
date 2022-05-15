#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int function_not_covered(void)
{
    int x = -1;
    return x;
}

int main(void)
{
    bool print_hello = true;
    if (print_hello)
        printf("Hello, world!\n");
    else
        printf("This branch isn't covered.\n");
    return EXIT_SUCCESS;
}
