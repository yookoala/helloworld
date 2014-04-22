INC_PATH=../include
SRC_PATH=../src
LIB_PATH=../lib

all: test

clean:
	rm -f *.o
	rm -f test_hello
	rm -f test_foo
	rm -f test_ci_hello
	rm -f test_ci_foo

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
	@ LD_LIBRARY_PATH=$$LD_LIBRARY_PATH:../lib ./test_hello && echo "test_hello: Pass"
	@ LD_LIBRARY_PATH=$$LD_LIBRARY_PATH:../lib ./test_foo   && echo "test_foo:   Pass"
	@ echo

test_ci_hello:
	gcc -c test_hello.c -o test_ci_hello.o
	gcc test_ci_hello.o -lhello -o test_ci_hello

test_ci_foo:
	gcc -c test_foo.c -o test_ci_foo.o
	gcc test_ci_foo.o -lhello -o test_ci_foo


ci-test: test_ci_hello test_ci_foo
	@ echo
	@ echo ----------
	@ echo  Run Test
	@ echo ----------
	@ ./test_ci_hello && echo "test_ci_hello: Pass"
	@ ./test_ci_foo   && echo "test_ci_foo:   Pass"
	@ echo

.PHONY: clean test ci-test
