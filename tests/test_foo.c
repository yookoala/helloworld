#include <string.h>
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include "foo.h"

int main() {
	char* result;
	result = Foo("Bar");

	// compare the two string and see if they are the same
	assert(strcmp(result, "Foo Bar") == 0);

	// free memory
	free(result);

	return 0;
}
