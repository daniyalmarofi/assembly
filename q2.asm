.ORIG x3000
        
	LD R1, X
	LD R2, Y
   
	ADD R1, R1, #0
	BRn MXP ; # if X<0: Make X Positive

C1	ADD R2, R2, #0
	BRn MYP ; # if Y<0: Make Y Positive

rest   NOT R3, R1
	ADD R3, R3, #1 ; R3=-|x|
	ADD R4, R2, R3 ; R4=Y-X
	BRn ToR2
	HALT

ToR2	ADD R2, R1, #0 ; save X to R2
	HALT

MXP	NOT R1,R1 ;
	ADD R1,R1,#1 ; X=-X
	BR C1

MYP    NOT R2,R2 ;
	ADD R2,R2,#1 ; Y=-Y
        BR rest

X    .FILL #-6
Y    .FILL #-7

.END