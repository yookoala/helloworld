INC_PATH=../include

all: compile
	
hello.o:
	gcc -I${INC_PATH} -c hello.c -o hello.o

foo.o:
	gcc -I${INC_PATH} -c foo.c -o foo.o

compile: hello.o foo.o

clean:
	rm -f *.o

.PHONY: all compile clean
