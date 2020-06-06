.ORIG x3000

        LD R0, X
        LD R1, Y
        ADD R2, R0, R1 ; R2=X+Y

        AND R3, R0, R1 ; R3=AND(X,Y)

	    NOT R4, R0 ; R4=NOT(X)
	    NOT R5, R1 ; R5=NOT(Y)
        AND R6, R4, R5 ; R6=AND(NOT(X),NOT(Y))
	    NOT R4, R6 ; R4=OR(X,Y)

        AND R5, R0, #1 ; R5=AND(X,1)
	    BRz ToR7 ; if R==0: even
	    BRp ToR6 ; elif R==1: odd

ToR7	LD R7, X
	    HALT

ToR6	LD R6, X
	    HALT

X      .FILL x0006
Y      .FILL x0005

.END