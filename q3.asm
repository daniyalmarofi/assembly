.ORIG   x3050

	    IN ; read a character from console (and store it in R0)
	    LD R1, O
	    ADD R2, R0, R1 ; R2=int(IN)

O	    .FILL #-48

        HALT

.END