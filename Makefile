MOCHA = node_modules/.bin/mocha

test:
	$(MOCHA) --compilers coffee:coffee-script

test-w:
	$(MOCHA) --compilers coffee:coffee-script -w -R min

.PHONY: test test-w