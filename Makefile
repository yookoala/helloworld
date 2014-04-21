compile:
	cd src; $(MAKE) $@

all:
	cd src; $(MAKE) $@

clean:
	cd tests; $(MAKE) $@
	cd src; $(MAKE) $@

test: compile
	cd tests; $(MAKE) $@
	@ echo
	@ echo ----------
	@ echo  Run Test
	@ echo ----------
	@ ./tests/test && echo Pass

.PHONY: compile all clean test
