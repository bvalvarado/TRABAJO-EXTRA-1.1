
#include "p16f84a.inc"	; This includes PIC16F84A definitions for the MPASM assembler

		LIST P=16F04A
		RADIX HEX

AUXILIAR EQU 0X0C

		ORG 0
		GOTO INICIO
		ORG 5

INICIO  BSF STATUS, RP0
		MOVLW B'00001111'
		MOVWF TRISB
		BCF STATUS, RP0

LEERPUERTO	MOVF PORTB,W
		ANDLW 0X0F
		MOVWF AUXILIAR
		COMF AUXILIAR,W
		ANDLW 0X0F
		MOVWF AUXILIAR
		SWAPF AUXILIAR,W
		MOVWF PORTB
		GOTO LEERPUERTO

	END