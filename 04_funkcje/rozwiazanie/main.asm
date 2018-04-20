; Silnia

; Celem zadania jest napisanie funkcji, ktora w sposob iteracyjny oblicza silnie

; Polecenia:
; 1) Utworz funkcje o nazwie "silnia"
; 2) Korzystajac z petli oblicz iteracyjnie silnie dla podanego argumentu
; 3) Program wypisze, czy wynik jest poprawny

; Podpowiedzi: 
; 	I) (do pkt 2) Przy mnozeniu mozna skorzystac z rejestru ecx
;   II) Przyjmujemy, ze argument przekazujemy do funkcji w rejestrze rdi
;   III) Funkcja zwraca wynik w rejestrze rax


%macro wypisz_tekst 2
      mov   rax, 1 
      mov   rdi, 1 
      mov   rsi, %1
      mov   rdx, %2
      syscall
%endmacro

section .data
   msg db "Poprawny wynik!", 0xa 
   len equ $ - msg   

   msg1 db "Zly wynik :(", 0xa 
   len1 equ $ - msg1 

section .text
	global _start


global silnia
silnia:
	mov rcx, rdi ; 1. argument
	mov rax, 1
petla:
	mul rcx
	loop petla

	ret


_start:
	mov rdi, 4
	call silnia

	cmp rax, 24
	je poprawnie
	wypisz_tekst msg1, len1
	jmp koniec

poprawnie:
	wypisz_tekst msg, len

koniec:
	mov rax, 60 
 	mov rdi, 0   
 	syscall
