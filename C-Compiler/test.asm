DSEG	SEGMENT
	bb	DW	10 DUP(0)
	a	DW	5 DUP(0)
	char	DW	3 DUP(0)
	inta	DW	8 DUP(0)
	float	DW	1 DUP(0)
	TEMP	DW	4 DUP(0)
	CONST	DW	10,5,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DSEG	ENDS
CSEG	SEGMENT
	ASSUME	CS:CSEG,DS:DSEG
start:	MOV	AX,DSEG
	MOV	DS,AX
	MOV	AX,char[6]
	MOV	BX,char[8]
	CMP	AX,BX
	MOV	TEMP[4],AX
	MOV	AX,TEMP[4]
	AND	AX,AX
	JZ	t0
	MOV	AX,CONST[6]
	MOV	char[6],AX
t0:	MOV	AX,char[8]
	MOV	BX,char[10]
	CMP	AX,BX
	MOV	TEMP[6],AX
	MOV	AX,TEMP[6]
	AND	AX,AX
	JZ	
	MOV	AX,CONST[4]
	MOV	char[10],AX
	JMP	t0
CSEG	ENDS
	END	START
