.ORIG   x3000
	
        JSR INPUT
	    ADD R3, R0, #0 ; copy Input to R3
	    JSR INPUT
	    ADD R4, R0, #0 ; copy Input to R4
	    JSR MULTIP
        HALT

INPUT	ADD R4, R7, #0
	    IN ; read a character from console (and store it in R0)
	    LD R1, O
	    ADD R0, R0, R1 ; R0=int(IN)
	    ADD R7, R4, #0 ; Copy back R4 to R7
	    RET

O	    .FILL #-48

MULTIP	AND R5, R5, #0 ; empty R5
Loop	ADD R5, R5, R3 ; R5=X+X
	    ADD R4, R4, #-1 ; R4=R4-1
	    BRp Loop
	    RET

.END