INC_PATH=../include

all: compile
	
hello.o:
	gcc -fPIC -I${INC_PATH} -c hello.c -o hello.o

foo.o:
	gcc -fPIC -I${INC_PATH} -c foo.c -o foo.o

../lib:
	mkdir ../lib

../lib/libhello.so: ../lib hello.o foo.o
	gcc -shared hello.o foo.o -o ../lib/libhello.so

compile: ../lib/libhello.so

clean:
	rm -f *.o
	if [ -d ../lib ]; then rm -f ../lib/*; rmdir ../lib; fi

.PHONY: all compile clean
