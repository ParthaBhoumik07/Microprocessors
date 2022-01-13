.MODEL SMALL  

.STACK 100H  

.DATA
    ; DEFINE YOUR VARIABLES HERE
       
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE   
        
        
        MOV AL, 5   ; AL = 5  
        MOV BL, 2   ; BL = 2
        MUL BL      ; AX = AL * BL = 5 * 2 = 10  
        
        MOV BL, AL  ; BL = AL = 10
        
        MOV AL, 4   ; AL = 4
        SUB AL, 0   ; AL = AL -0 = 4 - 0 = 4
        
        ADD BL, AL  ; BL = BL + AL = 10 + 4 = 14
        
        MOV AL, 5   ; AL = 5
        ADD AL, 3   ; AL = AL + 3 = 5 + 3 = 8
        ADD AL, 2   ; AL = AL + 2 = 8 + 2 = 10
        
        ADD BL, AL  ; BL = BL + AL = 14 + 10 = 24
        
        MOV AX, 6   ; AX = 6
        MOV CL, 2   ; CL = 2
        DIV CL      ; AX = AX / CL = 6 / 2 = 3, STORED IN AL
        
        SUB BL,AL   ; BL = BL - AL = 24 - 3 = 21 = 15h
          
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN