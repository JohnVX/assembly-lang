/* floattest.c An example of using floating point return values */
#include <stdio.h>

float areafunc(int);

int main(void)
{
	int radius = 10;
	float result;

	result = areafunc(radius);
	printf("the result is %f\n", result);
	printf("the result is %f\n", areafunc(2));

	return 0;
}
