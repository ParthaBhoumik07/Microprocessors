.MODEL SMALL  

.STACK 100H  

.DATA
    ; DEFINE YOUR VARIABLES HERE
    
    W DB 2
    X DB 10
    Y DB 5 
    Z DB 40  
    
    ;W,X,Y,Z ARE BYTE SIZED HENCE USING DB
       
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE   
        
        
        MOV AL, X   ; AL = X = 10  
        MOV BL, Z   ; BL = Z = 40
        MUL BL      ; AX = AL * BL = 10 * 40 = 400
        MOV BX, AX  ; BX = AX = 400
        
        MOV AL, Y   ; AL = Y = 5 
        MOV CL, W   ; CL = W = 2
        MUL CL      ; AX = AL * CL =10
        MOV CX, AX  ; CX = AX = 10
        
        MOV AX, BX  ; AX = BX = 400
    
        DIV CX      ; AX = AX / CX = 400 / 10 = 40 IN AL
        
        DIV BX      ; AX = AX / BX = 40 / 400 =  0 IN AL
        
        MOV X, AL   ; X = AL [AL STORES THE QUOTIENT]
                  
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN
