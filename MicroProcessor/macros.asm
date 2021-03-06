; SHOULD NOT COMPILE THIS FILE, JUST ADD IN ANOTHER FILE WHILE USING
; ACTS LIKE #DEFINE HENCE REPLACES THE CODE INLINE

; SYNTAX FOR MACRO DEFINITION
; < NAME OF THE MACRO> MACRO <ARGUMENT TO THE MACRO IF ANY>
; < BODY OF THE MACRO>
; ENDM


; MACRO FOR READING A CHARACTER

READCHAR MACRO
MOV AH,01H
INT 21H
ENDM

; MACRO FOR WRITING A CHARACTER

WRITECHAR  MACRO
MOV AH,02H
INT 21H
ENDM


; MACRO FOR CLEARSCREEN

CLRSCR MACRO
MOV AH,07H    ; TO MANIPULATE THE ACTIVE VIDEO PAGE OF THE SCREEN
MOV AL,00     ; NO OF LINE OF TEXT TO BE BLANKED IF 0 THEN ENTIRE SCREEN IS BLANKED
MOV BH,07     ; ATTRIBUTE USED FOR BLANK AREA - CONTROL THE COLOR OF BLANK AREA
MOV CX,0000   ; CL:CH ARE THE (x,y) COORDINATE OF THE UPPER LEFT CORNER
MOV DH,24     ; DL:DH ARE THE (x,y) COORDINATE OF THE LOWER RIGHT CORNER
MOV DL,79     ; NORMAL RESOLUTION OF THE SCREEN 25*80
INT 10H
ENDM

; MACRO FOR SETTING THE CURSOR

SETCUR MACRO
MOV AH, 02H
MOV BH, 00H
MOV DH, 15
MOV DL, 32
INT 10H
ENDM

; MACRO FOR EXIT

TOEXIT MACRO
MOV AH,4CH
INT 21H
ENDM
