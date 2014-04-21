#include <string.h>
#include <stdlib.h>
#include "hello.h"

char* Hello(char* target) {
	char* str_return = (char*) malloc(strlen(target) + 6);
	strcpy(str_return, "Hello ");
	strcat(str_return, target);
	return str_return;
}


