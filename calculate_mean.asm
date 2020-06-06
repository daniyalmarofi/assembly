.ORIG x3000
        LD R1, arr ; this is the address first value of the array
        AND R2, R2, #0 ; now R2 is zero for the sum
        LD R4, count ; R4 is the counter

Loop    LDI R3, arr ; R3 is the value of arr
        ADD R2,R3,R2 ; R2=R1+R2
        ADD R1,R1,#1 ; go to the next
        ST R1, arr ; save next place to arr
	    ADD R4, R4, #-1 ; R4=R4-1
	    BRp Loop

        JSR DIV ; calculate sum/100
        STI R5, res ; save mean to x2000

        HALT

DIV     LD R4, count ; R4 is the counter
        AND R5, R5, #0 ; now R2 is zero for the division
        LD R6, mcount ; R6 is -100
        ADD R2, R2, R6 ; R2=R2-100
DIVL    ADD R5,R5,#1 ; R5=R5+1
        ADD R2, R2, R6 ; R2=R2-100
        BRzp DIVL
        RET

arr     .FILL x1000
count   .FILL #100
mcount  .FILL #-100
res     .FILL x2000
.END