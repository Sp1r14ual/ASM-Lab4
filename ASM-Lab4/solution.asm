.386
.MODEL FLAT
.DATA
X DD ?
Y DD ?
adr DD ?

.CODE
_solution PROC
PUSH EBP
MOV EBP, ESP

MOV EAX, [EBP]+8
MOV X, EAX

MOV EAX, [EBP]+12
MOV adr, EAX

FSTSW AX; ��������� �������� �������� ���������
FINIT; �������� ����������� � ��������� ���������

FLD X; st(0) = x
FLD ST; st(0) = x; st(1) = x
FADDP; ST(0) = 2X
FLD X; ST(0) = X; ST(1) = 2X
FSINCOS; ST(0) = COSX; ST(1) = SINX; ST(2) = 2X
FDIVRP; ST(0) = COSX/SINX = CTGX; ST(1) = 2X
FSUBRP; ST(O) = CTGX - 2X

FSTP Y; st(0) = 0 ;� Y ���������

MOV ECX, adr
MOV EDX, Y
MOV [ECX], EDX
POP EBP
RET

_solution ENDP
END
