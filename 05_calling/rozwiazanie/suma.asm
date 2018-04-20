section .text
global suma
suma:

	mov rcx, rdi ; rozmiar tablicy 
	mov rdx, rsi ; wskaznik na 1 element
	mov eax, 0 ; suma
	mov rbx, 0 ; licznik

petla:
	add eax, dword [rdx+4*rbx]
	inc rbx
	loop petla

	ret
	