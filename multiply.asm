; R3=R1*R2
.ORIG x3000
        LD R1, X
        LD R2, Y

MULT    AND R3, R3, #0 ; empty R3
MULL	ADD R3, R3, R1 ; R3=R1+R1
	    ADD R2, R2, #-1 ; R2=R2-1
	    BRp MULL

HALT

X	   .FILL #6
Y	   .FILL #5

.END