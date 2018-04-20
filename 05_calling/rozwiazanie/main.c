#include <stdio.h>

extern int suma(int rozmiar, int* tab);

int main()
{
	int tab[] = {1,5,4,2,6,2}; 
	printf("suma = %d\n", suma(6, tab));
	return 0;	
}