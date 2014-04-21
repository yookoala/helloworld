INC_PATH=../include

all: compile
	
hello.o:
	gcc -I${INC_PATH} -c hello.c -o hello.o

compile: hello.o

clean:
	rm -f *.o

.PHONY: all compile clean
