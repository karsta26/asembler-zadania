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
	; kod

section .text
	global _start

_start:
	; kod - wpisz liczbe elementow do rejestru
	mov r12, 0 ; licznik


	; kod - petla umieszczajaca elementy z tablicy na stosie


	; kod - wpisz liczbe elementow do rejestru
	mov r12, 0 ; licznik
	

	; kod - petla sciagajaca elementy ze stosu do tablicy


	mov rax, 60 
	mov rdi, 0   
 	syscall
	