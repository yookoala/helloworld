INC_PATH=../include
SRC_PATH=../src

all: test

clean:
	rm -f test_hello
	rm -f test_foo

test_hello:
	gcc -I${INC_PATH} ${SRC_PATH}/hello.o test_hello.c -o test_hello

test_foo:
	gcc -I${INC_PATH} ${SRC_PATH}/foo.o test_foo.c -o test_foo

test: test_hello test_foo
	@ echo
	@ echo ----------
	@ echo  Run Test
	@ echo ----------
	@ ./test_hello && echo "test_hello: Pass"
	@ ./test_foo   && echo "test_foo:   Pass"
	@ echo

.PHONY: clean test
