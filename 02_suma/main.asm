; Suma elementów w tablicy

; Celem zadania jest zsumowanie elementow tablicy z uzycie petli

; Polecenia:
; 1) Zadeklaruj tablice w sekcji data, skladajaca sie z 5 liczb (32-bitowe)
; 2) Zadeklaruj zmienna w sekcji data, przechowujaca rozmiar zdefiniowanej tablicy
; 3) Zadeklaruj zmienna w sekcji bss(rowniez 32-bity) - suma 
; 4) Do odpowiedniego rejestru wpisz rozmiar tablicy 
; 5) Uzywajac petli zsumuj elementy tablicy
; 6) Uzyskany wynik wpisz do zmiennej z sekcji bss
; 7) Sprawdz poprawnosc w debuggerze

; Podpowiedz:  (do pkt 4) Jaki rejestr byl uzywany w petlach?



	; kod

section  .text
   global _start         

_start:    
	; kod
	mov ebx, 0 ; licznik

dodaj:
	;add ????, dword [tablica+4*ebx]
	inc ebx
	loop dodaj

	; kod - wpisz sume do zmiennej z sekcji bss

	mov rax, 60 
    mov rdi, 0   
 	syscall