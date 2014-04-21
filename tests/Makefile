INC_PATH=../include
SRC_PATH=../src

all: test

clean:
	rm -f test_hello

test_hello:
	gcc -I${INC_PATH} ${SRC_PATH}/hello.o test_hello.c -o test_hello
	
test: test_hello
	@ echo
	@ echo ----------
	@ echo  Run Test
	@ echo ----------
	@ ./test_hello && echo test_hello: Pass

.PHONY: clean test
