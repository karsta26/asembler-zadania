# do przykladow 1-4
main: main.o
	ld -g main.o -o main
main.o: main.asm
	nasm -f elf64 main.asm -g -o main.o

clean:
	rm main.o main
