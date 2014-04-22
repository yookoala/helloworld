INC_PATH=../include
SRC_PATH=../src
LIB_PATH=../lib

all: test

clean:
	rm -f *.o
	rm -f test_hello
	rm -f test_foo

test_hello:
	gcc -I${INC_PATH} -c test_hello.c -o test_hello.o
	gcc test_hello.o -L${LIB_PATH} -lhello -o test_hello

test_foo:
	gcc -I${INC_PATH} -c test_foo.c -o test_foo.o
	gcc test_foo.o -L${LIB_PATH} -lhello -o test_foo

test: test_hello test_foo
	@ echo
	@ echo ----------
	@ echo  Run Test
	@ echo ----------
	@ ./test_hello && echo "test_hello: Pass"
	@ ./test_foo   && echo "test_foo:   Pass"
	@ echo

.PHONY: clean test
