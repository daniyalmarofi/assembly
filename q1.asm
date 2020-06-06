.ORIG   x3000

cint    LD     R3,b15 ; R3 is -32768, the least possible negative number
        LD     R1, a
        LD     R2, b
        NOT    R4, R1 ; NOT(a)
        NOT    R5, R2 ; NOT(b)
        AND    R4, R4, R2 ; AND(NOT(a),b)
        AND    R5, R5, R1 ; AND(NOT(b),a)
        ADD    R4, R4, R5 ; AND(NOT(a),b) + AND(NOT(b),a)
        AND    R4, R4, R3 ; the last bit of R4 remains. because R3 is 1000000000000000
        ; if a and had varoius signs R4 would be negative. else R4 would be positive or zero
        BRzp   cmp
retA    ST     R1,r ; r=a
        BR     leave ; exit program
cmp     NOT    R2,R2
        ADD    R2,R2,#1 ; calculate 2's complement of b ; R2=-b
        ADD    R2,R1,R2 ; R2=a-b
        ST     R2,r ; r=a-b
leave   HALT ; exit program

r      .BLKW #1
a      .FILL x8000
b      .FILL x8000
b15    .FILL x8000

.END