INC_PATH=../include

all: compile
	
hello.o:
	gcc -I${INC_PATH} -c hello.c -o hello.o

foo.o:
	gcc -I${INC_PATH} -c foo.c -o foo.o

../lib:
	mkdir ../lib

../lib/libhello.a: ../lib hello.o foo.o
	ar -rcs ../lib/libhello.a hello.o foo.o

compile: ../lib/libhello.a

clean:
	rm -f *.o
	if [ -d ../lib ]; then rm -f ../lib/*; rmdir ../lib; fi

.PHONY: all compile clean
