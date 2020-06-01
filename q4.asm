.ORIG x3000
        LD R3, X
        LD R4, Y

	AND R5, R5, #0 ; empty R5
Loop	ADD R5, R5, R3 ; R5=X+X
	ADD R4, R4, #-1 ; R4=R4-1
	BRp Loop
	HALT

X	.FILL x0006
Y	.FILL x0005

.END