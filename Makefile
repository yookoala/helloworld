compile:
	cd src; $(MAKE) $@

all:
	cd src; $(MAKE) $@

clean:
	cd tests; $(MAKE) $@
	cd src; $(MAKE) $@

test: compile
	cd tests; $(MAKE) $@

.PHONY: compile all clean test
