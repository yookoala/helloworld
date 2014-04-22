compile:
	cd src; $(MAKE) $@

all:
	cd src; $(MAKE) $@

clean:
	cd tests; $(MAKE) $@
	cd src; $(MAKE) $@
	if [ -d lib ]; then rm -f lib/*; rmdir lib; fi

test: compile
	cd tests; $(MAKE) $@

lib:
	mkdir lib

.PHONY: compile all clean test
