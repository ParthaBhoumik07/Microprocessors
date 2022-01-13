.MODEL SMALL
.STACK 100H
.DATA
    ; DEFINE YOUR VARIABLES
.CODE  
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE 
        
        
        MOV AX, 2   ;LOADED 2 IN AX REGISTER
        MOV BX, 5   ;LOADED 5 IN AX REGISTER
        
        ADD DX, AX  ;DX = DX + AX = 0 + 2 = 2 
        ADD AX, BX  ;AX = AX + BX = 2 + 5 = 7
        SUB AX, DX  ;AX = AX - DX = 7 - 2 = 5
        ADD BX, DX  ;BX = BX + DX = 5 + 2 = 7
        SUB BX, AX  ;BX = BX - AX = 7 - 5 = 2 
          
        

        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H 
        
    MAIN ENDP
    END MAIN 
