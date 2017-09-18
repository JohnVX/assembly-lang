/* multtest.c An example of using multiple input values */
#include <stdio.h>

int main(void)
{
	int i = 1;
	int j = 2;
	int k = greater(i, j);
	printf("the larger value is %d\n", k);
	
	return 0;
}
