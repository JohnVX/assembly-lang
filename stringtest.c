/* stringtest.c An example of returning a string value */
#include <stdio.h>

char *cpuidfunc(void);

int main()
{
	char *sp;

	sp = cpuidfunc();
	printf("The CPUID is: '%s'\n", sp);

	return 0;
}
