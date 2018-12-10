

   ;project:Graphical Calculator
   
   ;Created by:
         
         ; Md.Golam Rabbani (Year-2018)




.MODEL SMALL
.STACK 100H
.DATA

      V1 DB 0,0,0    
      COUNT DW 0
      DIGITS DB 0
  
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,0
    MOV AL,13H  ; set graphical mode
    INT 10H
    
    MOV CX,20
    MOV DX,53
    MOV AL,15
    MOV AH,0CH  ; set video mode 
    INT 10H
    
   START:
    INC CX
    INT 10H
    CMP CX,170  ; first ROW and Clmm
    
    JNE START
    
    
    MOV AH,2
    MOV DL,10  
    INT 21H
    MOV DL,10
    INT 21H
    MOV DL,10  
    INT 21H
    MOV DL,10
    INT 21H
    MOV DL,10
    INT 21H      
    MOV DL,10
    INT 21H
    MOV DL,10    ; NewLine and Space
    INT 21H
    MOV DL,10
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"9"   ; digits --> 9
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"8"   ; digits --> 8
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"7"   ; digits --> 7
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"+"   ; digits --> +
    INT 21H 
    
    MOV AH,2
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H  
    MOV DL,10
    INT 21H
    MOV DL,10
    INT 21H 
    MOV DL,10
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H 
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"6"   ; digits --> 6
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"5"   ; digits --> 5
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"4"   ; digits --> 4
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"-"   ; digits --> -
    INT 21H 
    
    MOV AH,2
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H   
    MOV DL,10
    INT 21H    
    MOV DL,10
    INT 21H
    MOV DL,10
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"3"   ; digits --> 3
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"2"   ; digits --> 2
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"1"   ; digits --> 1
    INT 21H 
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"*"   ; digits --> *
    INT 21H 
    
    MOV AH,2
    MOV DL,13
    INT 21H 
    
    MOV AH,2
    MOV DL,10
    INT 21H   
    MOV DL,10
    INT 21H  
    MOV DL,10
    INT 21H
    MOV DL,10
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H   
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"A"
    INT 21H
    MOV DL,'/'    ; digits --> A/C
    INT 21H
    MOV DL,'C'
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"0"    ; digits --> 0
    INT 21H
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"="    ; digits --> =
    INT 21H 
    
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    
    MOV AH,2
    MOV DL,"/"    ; digits --> /
    INT 21H
    
       
        ;;
        ;;
       
       
    
;----Starting----; 
    
    MOV DL,0
    MOV DH,0
    MOV AH,02
    INT 10H
    
    MOV AH,2
    MOV DL,10  
    INT 21H
    MOV DL,10
    INT 21H
    MOV DL,10  
    INT 21H
    MOV DL,10
    INT 21H
    MOV DL,10
    INT 21H
    MOV DL,10
    INT 21H
    MOV DL,10
    INT 21H
    MOV DL,32
    INT 21H
    MOV AH,2
    MOV DL,32
    INT 21H
    MOV DL,32
    INT 21H
    MOV AH,2
    MOV DL,32
    INT 21H 
    
       ;;
       ;;
       ;;
       
    
    MOV CX,20
    MOV DX,20
    MOV AL,14
    MOV AH,0CH
    INT 10H
    
    R0:
    INC CX
    INT 10H
    CMP CX,170
    
    JNE R0 
    
    MOV DX,20
    MOV AL,14
    MOV AH,0CH
    INT 10H
    
    C0:
    INC DX
    INT 10H
    CMP DX,50
    
    JNE C0 
    
    R1:
    DEC CX
    INT 10H
    CMP CX,20
    
    JNE R1
    
    MOV DX,20
    MOV AL,14
    MOV AH,0CH
    INT 10H
    
    C1:
    INC DX
    INT 10H
    CMP DX,50
    
    JNE C1
    
       ;;
       
       
    
;-----Button(9)-----;
    
    MOV CX,20
    MOV DX,60
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R2:
    INC CX
    INT 10H
    CMP CX,50
    
    JNE R2
    
    C2:
    INC DX
    INT 10H
    CMP DX,80 
    
    JNE C2   
    
    R3:
    DEC CX
    INT 10H
    CMP CX,20
    
    JNE R3
    
    MOV DX,60
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C3:
    INC DX
    INT 10H
    CMP DX,80 
    
    JNE C3
    
       ;;
       
       
    
;-----Button(8)-----;     
      
    MOV CX,60 
    MOV DX,60
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R4:
    INC CX
    INT 10H
    CMP CX,90  
    
    JNE R4
    
    C4:
    INC DX
    INT 10H
    CMP DX,80 
    
    JNE C4   
    
    R5:
    DEC CX
    INT 10H
    CMP CX,60   
    
    JNE R5
    
    MOV DX,60
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C5:
    INC DX
    INT 10H
    CMP DX,80 
    
    JNE C5
    
       ;;
       
          
       
;-----Button(7)-----;
          
    MOV CX,100 
    MOV DX,60
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R6:
    INC CX
    INT 10H
    CMP CX,130  
    
    JNE R6
    
    C6:
    INC DX
    INT 10H
    CMP DX,80 
    
    JNE C6   
    
    R7:
    DEC CX
    INT 10H
    CMP CX,100  
    
    JNE R7
    
    MOV DX,60
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C7:
    INC DX
    INT 10H
    CMP DX,80 
    
    JNE C7
    
       ;;
       
            
    
;-----Button(+)-----;
       
    MOV CX,140 
    MOV DX,60
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R8:
    INC CX
    INT 10H
    CMP CX,170  
    
    JNE R8
    
    C8:
    INC DX
    INT 10H
    CMP DX,80 
    
    JNE C8   
    
    R9:
    DEC CX
    INT 10H
    CMP CX,140  
    
    JNE R9
    
    MOV DX,60
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C9:
    INC DX
    INT 10H
    CMP DX,80 
    
    JNE C9
    
       ;;
       
        
    
;-----Button(6)-----;        
    
    MOV CX,20 
    MOV DX,90
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R10:
    INC CX
    INT 10H
    CMP CX,50  
    
    JNE R10
    
    C10:
    INC DX
    INT 10H
    CMP DX,110 
    
    JNE C10   
    
    R11:
    DEC CX
    INT 10H
    CMP CX,20   
    
    JNE R11
    
    MOV DX,90
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C11:
    INC DX
    INT 10H
    CMP DX,110 
    
    JNE C11
    
       ;;
       
         
    
;-----Button(5)-----;
    
    MOV CX,60 
    MOV DX,90
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R12:
    INC CX
    INT 10H
    CMP CX,90  
    
    JNE R12
    
    C12:
    INC DX
    INT 10H
    CMP DX,110 
    
    JNE C12   
    
    R13:
    DEC CX
    INT 10H
    CMP CX,60   
    
    JNE R13
    
    MOV DX,90
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C13:
    INC DX
    INT 10H
    CMP DX,110 
    
    JNE C13
    
       ;;
       
        
    
;-----Button(4)-----;
      
    MOV CX,100 
    MOV DX,90
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R14:
    INC CX
    INT 10H
    CMP CX,130  
    
    JNE R14
    
    C14:
    INC DX
    INT 10H
    CMP DX,110 
    
    JNE C14   
    
    R15:
    DEC CX
    INT 10H
    CMP CX,100   
    
    JNE R15
    
    MOV DX,90
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C15:
    INC DX
    INT 10H
    CMP DX,110 
    
    JNE C15
    
       ;;
       
       
    
;-----Button(-)-----;
    
    MOV CX,140 
    MOV DX,90
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R16:
    INC CX
    INT 10H
    CMP CX,170  
    
    JNE R16
    
    C16:
    INC DX
    INT 10H
    CMP DX,110 
    
    JNE C16   
    
    R17:
    DEC CX
    INT 10H
    CMP CX,140   
    
    JNE R17
    
    MOV DX,90
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C17:
    INC DX
    INT 10H
    CMP DX,110 
    
    JNE C17
    
       ;;
       
        
    
;-----Button(3)-----;   
    
    MOV CX,20 
    MOV DX,120
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R18:
    INC CX
    INT 10H
    CMP CX,50  
    
    JNE R18
    
    C18:
    INC DX
    INT 10H
    CMP DX,140 
    
    JNE C18   
    
    R19:
    DEC CX
    INT 10H
    CMP CX,20   
    
    JNE R19
    
    MOV DX,120
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C19:
    INC DX
    INT 10H
    CMP DX,140 
    
    JNE C19
    
       ;;
       
              
    
;-----Button(2)-----;
      
    MOV CX,60 
    MOV DX,120
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R20:
    INC CX
    INT 10H
    CMP CX,90  
    
    JNE R20
    
    C20:
    INC DX
    INT 10H
    CMP DX,140 
    
    JNE C20   
    
    R21:
    DEC CX
    INT 10H
    CMP CX,60   
    
    JNE R21
    
    MOV DX,120
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C21:
    INC DX
    INT 10H
    CMP DX,140 
    
    JNE C21
    
       ;;
       
        
    
;-----Button(1)-----;
    
    MOV CX,100 
    MOV DX,120
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R22:
    INC CX
    INT 10H
    CMP CX,130  
    
    JNE R22
    
    C22:
    INC DX
    INT 10H
    CMP DX,140 
    
    JNE C22  
    
    R23:
    DEC CX
    INT 10H
    CMP CX,100   
    
    JNE R23
    
    MOV DX,120
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C23:
    INC DX
    INT 10H
    CMP DX,140 
    
    JNE C23
    
       ;;
       
        
    
;-----Button(*)-----; 
    
    MOV CX,140 
    MOV DX,120
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R24:
    INC CX
    INT 10H
    CMP CX,170  
    
    JNE R24
    
    C24:
    INC DX
    INT 10H
    CMP DX,140 
    
    JNE C24  
    
    R25:
    DEC CX
    INT 10H
    CMP CX,140  
    
    JNE R25
    
    MOV DX,120
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C25:
    INC DX
    INT 10H
    CMP DX,140 
    
    JNE C25
    
       ;;
       
        
    
;-----Button(A/C)-----;  
    
    MOV CX,20 
    MOV DX,150
    MOV AL,12
    MOV AH,0CH
    INT 10H
    
    R26:
    INC CX
    INT 10H
    CMP CX,50  
    
    JNE R26
    
    C26:
    INC DX
    INT 10H
    CMP DX,170 
    
    JNE C26   
    
    R27:
    DEC CX
    INT 10H
    CMP CX,20   
    
    JNE R27
    
    MOV DX,150
    MOV AL,12
    MOV AH,0CH
    INT 10H
    
    C27:
    INC DX
    INT 10H
    CMP DX,170 
    
    JNE C27 
    
       ;;
       
         
    
;-----Button(0)-----;
     
    MOV CX,60 
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R28:
    INC CX
    INT 10H
    CMP CX,90  
    
    JNE R28
    
    C28:
    INC DX
    INT 10H
    CMP DX,170 
    
    JNE C28   
    
    R29:
    DEC CX
    INT 10H
    CMP CX,60   
    
    JNE R29
    
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C29:
    INC DX
    INT 10H
    CMP DX,170 
               
    JNE C29
       
       ;;
       
        
    
;-----Button(=)-----;
    
    MOV CX,100 
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R30:
    INC CX
    INT 10H
    CMP CX,130  
    
    JNE R30
    
    C30:
    INC DX
    INT 10H
    CMP DX,170 
    
    JNE C30   
    
    R31:
    DEC CX
    INT 10H
    CMP CX,100   
    
    JNE R31
    
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C31:
    INC DX
    INT 10H
    CMP DX,170 
    
    JNE C31 
    
       ;;
      
      
      
;-----Button(/)-----;
     
    MOV CX,140 
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    R32:
    INC CX
    INT 10H
    CMP CX,170  
    
    JNE R32
    
    C32:
    INC DX
    INT 10H
    CMP DX,170 
    
    JNE C32   
    
    R33:
    DEC CX
    INT 10H
    CMP CX,140   
    
    JNE R33
    
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    INT 10H
    
    C33:
    INC DX
    INT 10H
    CMP DX,170 
    
    JNE C33
    
       ;;
      
      
      
;-----Finishing-----; 
    
    MOV CX,15
    MOV DX,15
    
    MOV AL,13
    MOV AH,0CH
    INT 10H
    
    R34:
    INC CX
    INT 10H
    CMP CX,175  
    
    JNE R34
    
    C34:
    INC DX
    INT 10H
    CMP DX,175
    
    JNE C34 
    
    R35:
    DEC CX
    INT 10H
    CMP CX,15
    
    JNE R35
    
    C35:
    DEC DX
    INT 10H
    CMP DX,15
    
    JNE C35
    
    MOV AH,2
    MOV BH,0
    MOV DH,4
    MOV DL,4
    INT 10H
    
       ;;
       
       
    
;-----MOUSE-----;

    ABC: 
    CMP digits,15
    JGE ABC
    MOV AX,3
    INT 33H
    CMP BL,1
    JNE ABC
  
    CMP DX,59
    JNG ABC
    CMP DX,81
    JL b9
    
    CMP DX,89
    JNG ABC
    CMP DX,111
    JL firstROW
    
    CMP DX,119
    JNG ABC
    CMP DX,141
    JL secondROW 
     
   
    CMP DX,149
    JNG ABC
    CMP DX,171
    JL lastROW
    
    JNL ABC
    b9:
    CMP CX,39
    JNG ABC 
   
    CMP CX,101
    JNL b8
    
    MOV AH,2
    MOV DL,57
    INT 21H
    INC digits
    MOV SI,COUNT
 
    MOV [V1+SI],9
    INC COUNT
    
    JMP ABC
    
    b8:
    CMP CX,120
    JNG ABC 
   
    CMP CX,180
    JNL b7
    
    MOV AH,2
    MOV DL,56
    INT 21H
    INC digits
    MOV SI,COUNT
 
    MOV [V1+SI],8
    INC COUNT
    
 
    JMP ABC 
    
    b7:
    CMP CX,199
    JNG ABC 
   
    CMP CX,261
    JNL bPlus
    
    MOV AH,2
    MOV DL,55
    INT 21H
    INC digits
    MOV SI,COUNT
 
    MOV [V1+SI],7
    INC COUNT
    
 
    JMP ABC
    
    bPlus:
    CMP CX,279
    JNG ABC
    
    CMP CX,341
    JNL firstROW 
    
    MOV AH,2       
    MOV DL,43
    INT 21H
    INC digits
    MOV SI,COUNT   
    
    MOV [V1+SI],'+'
    INC COUNT
    
    JMP ABC
    
    firstROW:
    CMP CX,39
    JNG ABC

    CMP CX,101
    JNL b6 

    MOV AH,2
    MOV BH,0
    MOV DH,4
    MOV DL,4
    INT 10H  
     
    b6:
    CMP CX,39
    JNG ABC 
   
    CMP CX,101
    JNL b5
    
    MOV AH,2
    MOV DL,32
    MOV DL,54
    INT 21H
    DEC digits
    MOV SI,COUNT
 
    MOV [V1+SI],6
    INC COUNT
    
 
    JMP ABC
    
    b5:
    CMP CX,120
    JNG ABC 
   
    CMP CX,180
    JNL b4
    
    MOV AH,2
    MOV DL,53
    INT 21H
    dec digits
    MOV SI,COUNT
 
    MOV [V1+SI],5
    INC COUNT
    
 
    JMP ABC
    
    b4:
    CMP CX,199
    JNG ABC 
   
    CMP CX,261
    JNL bMinis
    
    MOV AH,2
    MOV DL,52
    INT 21H
    DEC digits
    MOV SI,COUNT
 
    MOV [V1+SI],4
    INC COUNT
    
 
    JMP ABC
    
    bMinis:
    CMP CX,279
    JNG ABC
    
    CMP CX,341
    JNL secondROW
    
    MOV AH,2
    MOV DL,45
    INT 21H
    DEC digits
    MOV SI,COUNT
    
    MOV [V1+SI],'-'
    INC COUNT
    
    JMP ABC
    
    secondROW:

    CMP CX,39
    JNG ABC

    CMP CX,101
    JNL b3 
    
    MOV AH,2
    MOV BH,0
    MOV DH,4
    MOV DL,4
    INT 10H  
    
    b3:
    CMP CX,39
    JNG ABC 
   
    CMP CX,101
    JNL b2
                  
    MOV AH,2
    MOV DL,32
    MOV DL,51
    INT 21H
    DEC digits
    MOV SI,COUNT
 
    MOV [V1+SI],3
    INC COUNT
    
 
    JMP ABC
    
    b2:
    CMP CX,120
    JNG ABC 
   
    CMP CX,180
    JNL b1
    
    MOV AH,2        
    MOV DL,50
    INT 21H
    DEC digits
    MOV SI,COUNT
 
    MOV [V1+SI],2
    INC COUNT
    
 
    JMP ABC
    
    b1:
    CMP CX,199
    JNG ABC 
   
    CMP CX,261
    JNL bMul
    
    MOV AH,2
    MOV DL,49
    INT 21H
    DEC digits
    MOV SI,COUNT
 
    MOV [V1+SI],1
    INC COUNT
    
 
    JMP ABC
    
    bMul:
    CMP CX,279
    JNG ABC
    
    CMP CX,341
    JNL lastROW
    
    MOV AH,2
    MOV DL,42
    INT 21H
    DEC digits
    MOV SI,COUNT
    
    MOV [V1+SI],'*'
    INC COUNT
    
    JMP ABC
    
    lastROW:
    CMP CX,39
    JNG ABC
    
    CMP CX,101
    JNL b0
    
    MOV CL,17 
    
    MOV AH,2
    MOV BH,0
    MOV DH,4
    MOV DL,4
    INT 10H
    
    Remove:
    MOV AH,2
    MOV DL,32
    INT 21H
    
    Loop Remove
    
    MOV AH,2
    MOV BH,0
    MOV DH,4
    MOV DL,4
    INT 10H
    
    MOV digits,0
    
    JMP ABC 
    
    b0:
    CMP CX,120
    JNG ABC 
   
    CMP CX,180
    JNL bequal
    
    MOV AH,2       
    MOV DL,48
    INT 21H
    INC digits
    MOV SI,COUNT
 
    MOV [V1+SI],0
    INC COUNT
    
 
    JMP ABC 
    
    
    bequal:
    CMP CX,199
    JNG ABC
    
    CMP CX,261
    JNL bdiv
    
    MOV AH,2
    MOV DL,61
    INT 21H
    
    MOV COUNT,0
    INC digits
                     
    CMP [v1+1],'+'
    JE addD
    CMP [v1+1],'-'
    JE subB
    
    CMP [v1+1],'*'
    JE mulL
    
    CMP [v1+1],'/'
    JE divV
    
        ;;
       
        
       
;-----Addition-----;     
       
    addD:
    MOV DH,0 
    
    ADD DH,[v1+0]
    ADD DH,[v1+2]
    
    ADD DH,48
    
    MOV AH,2
    MOV DL,DH
    INT 21H
    
    JMP ABC
    
        ;;
        
        
    
;-----Subtraction-----;
    
    subB:
    MOV BL,0 
    
    MOV BL,[v1+0]
    SUB BL,[v1+2]
    
    ADD BL,48
    
    MOV AH,2
    MOV DL,BL       
    INT 21H
    
    JMP ABC
    
        ;;
        
        
    
    
;-----Multiplication-----;
    
    mulL:
    MOV AH,0 
    
    MOV AL,[v1+0]
    MOV BH,[v1+2]
    
    MUL BH
    
    AAM
    
    MOV BX,AX         
    
    ADD BH,48
    ADD BL,48
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
    
    JMP ABC
    
        ;;
    
    
    
;-----Divided-----;
    
    divV:
    MOV AX,0
    MOV BL,0 
    
    MOV AL,[v1+0]
    MOV BL,[v1+2]
    
    DIV BL         
    
    ADD AL,48
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    JMP ABC 
    
        ;;
        ;;
        ;;
        
        
        
        
        
    

;-----button(/)-----;
    
    bDiv:
    CMP CX,279
    JNG ABC
    
    CMP CX,341
    JNL ABC
    
    MOV AH,2
    MOV DL,47        
    INT 21H
    DEC digits
    MOV SI,COUNT
    
    MOV [V1+SI],'/'
    INC COUNT
    
    JMP ABC
    
                            
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
 END MAIN 
       