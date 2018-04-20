; Najwieksza liczba

; Celem zadania jest sprawdzenie, ktora z dwoch liczb jest wieksza

; Polecenia:
; 1) Zadeklaruj dwie zmienne w sekcji data o rozmiarze 32-bitow i przypisz im jakies wartosci
; 2) Zadeklaruj zmienna w sekcji bss(rowniez 32-bity)
; 3) Porównaj dwie liczby 
; 4) Do zmiennej z sekcji bss wpisz wieksza z nich
; 5) Sprawdz poprawnosc w debuggerze

; Podpowiedz: uzyj "cmp <op1>, <op2>" oraz skokow warunkowych 

section .data
   pierwsza dd 75
   druga dd 11

section .bss
   najwieksza resd 1 

section  .text
   global _start         

_start:             
   mov   ecx, [pierwsza]
   cmp   ecx, [druga] 
   jg    wyjscie
   mov   ecx, [druga] 
   
wyjscie:  
   mov   [najwieksza], ecx
       
   mov   rax, 60 
   mov   rdi, 0   
   syscall
