; Odwrocenie tablicy z uzyciem stosu

; Polecenia:
; 1) Zadeklaruj tablice w sekcji data, skladajaca sie z 5 liczb (64-bitowe)
; 2) Zadeklaruj zmienna w sekcji data, przechowujaca rozmiar zdefiniowanej tablicy(64-bit)
; 3) Do odpowiedniego rejestru wpisz rozmiar tablicy 
; 4) Utworz petle do umieszczenia wszystkich elemetow na stosie 
; 5) Utworz kolejna petle do sciagniecia liczb ze stosu
; 6) Sprawdz poprawnosc w debuggerze

; Podpowiedzi: 
; 	I) Do iterowania po tablicy wykorzystaj sposob z poprzedniego zadania(jednak teraz mamy inny rozmiar zmiennych!)
;   II) Dla stosu mamy instrukcje: push i pop

section .data
	tablica dq 34, 36, 38, 41, 43
	rozmiar dq 5

section .text
	global _start

_start:
	mov rcx, qword [rozmiar] ; liczba elementow
	mov r12, 0 ; licznik

pushLoop:
	push qword [tablica+8*r12]
	inc r12
	loop pushLoop

	mov rcx, qword [rozmiar] ; liczba elementow
	mov r12, 0 ; licznik
	
popLoop:
	pop qword [tablica+8*r12]
	inc r12
	loop popLoop

	mov rax, 60 
	mov rdi, 0   
 	syscall
	