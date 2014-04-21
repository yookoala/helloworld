#include <string.h>
#include <stdlib.h>
#include "foo.h"

char* Foo(char* target) {
	char* str_return = (char*) malloc(strlen(target) + 6);
	strcpy(str_return, "Foo ");
	strcat(str_return, target);
	return str_return;
}


