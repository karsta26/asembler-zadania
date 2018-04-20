all: run

run: suma
	./suma

suma: suma.o main.o
	gcc main.o suma.o -o suma
main.o: main.c
	gcc -c main.c -o main.o
suma.o: suma.asm
	nasm suma.asm -f elf64 -o suma.o

clean:
	rm *.o suma

deasemblacja: suma
	objdump -d suma -M intel

.PHONY: all clean run deasemblacja
