
hello: *.s
	mips-linux-gnu-as $^ -o $@.o
	mips-linux-gnu-gcc $@.o -o $@ -nostdlib -static
