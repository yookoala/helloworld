#include <string.h>
#include <assert.h>
#include <stdlib.h>
#include "hello.h"

int main() {
	char* result;
	result = Hello("World");

	// compare the two string and see if they are the same
	assert(strcmp(result, "Hello World") == 0);

	// free memory
	free(result);

	return 0;
}
