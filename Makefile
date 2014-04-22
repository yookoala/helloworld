PREFIX=/usr/local

compile:
	cd src; $(MAKE) $@

install: compile
	cp lib/libhello.so ${PREFIX}/lib/.
	cp include/hello.h ${PREFIX}/include/.
	cp include/foo.h ${PREFIX}/include/.
	ldconfig

uninstall:
	rm -f ${PREFIX}/lib/libhello.so
	rm -f ${PREFIX}/include/hello.h
	rm -f ${PREFIX}/include/foo.h

all:
	cd src; $(MAKE) $@

clean:
	cd tests; $(MAKE) $@
	cd src; $(MAKE) $@
	if [ -d lib ]; then rm -f lib/*; rmdir lib; fi

test: compile
	cd tests; $(MAKE) $@

ci-test:
	cd tests; $(MAKE) $@

lib:
	mkdir lib

.PHONY: compile install uninstall all clean test ci-test
