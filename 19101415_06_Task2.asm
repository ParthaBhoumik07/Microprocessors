
.MODEL SMALL  

.STACK 100H  

.DATA
    ; DEFINE YOUR VARIABLES HERE
    A DB 1
    B DB 2
    C DB 3 
    D DB 4
    ;A,B,C,D ARE BYTE SIZED HENCE USING DB
       
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE   
        
        
        MOV AL, A   ; AL = A = 1
        MOV BL, C   ; BL = C = 3
        SUB BL, AL  ; BL = BL - AL =  3 - 1 =  2
        SUB AL, BL  ; AL = AL - BL =  1 - 2 = -1 
        ADD AL, D   ; AL = AL + D  = -1 + 4 =  3
        MOV D, AL   ; D = AL = 3            
                  
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN
