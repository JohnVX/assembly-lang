/* inttest.c An example of returning an integer value */
#include <stdio.h>

int main()
{
	int i = 2;
	int j = square(i);
	printf("The square of %d is %d\n", i, j);

	return 0;
}
