;====================================================================
; Created:   Thu Dec 24 2020
; Processor: 8086
; Compiler:  MASM32
;
; Amir Reza Fasihi Rad
; Seyed Ali Mojtabavi
; AMIR HOSSEIN KAFFASHI
;
; Before starting simulation set Internal Memory Size 
; in the 8086 model properties to 0x10000
;====================================================================

;LCD Interfacing program

DATA SEGMENT

 PORTA EQU 00H
 PORTB EQU 02H
 PORTC EQU 04H
 PORT_CON EQU 06H
 
DATA ENDS

CODE SEGMENT

 MOV AX,DATA
 MOV DS, AX

ORG 0000H
START:

 MOV DX, PORT_CON
 MOV AL, 10000000B
 OUT DX, AL


Display_on: 
     
 MOV AL,00H  ;command setting cursor
 MOV DX,PORTC
 OUT DX,AL    
 MOV AL, 0EH 
 MOV DX, PORTA
 OUT DX,AL

 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 

 
 MOV AL,00H  ;command setting 8 bit mode
 MOV DX,PORTC
 OUT DX,AL    
 MOV AL, 038H 
 MOV DX, PORTA
 OUT DX,AL

 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL
 
LCD_mode_1:
             
 MOV AL,00H  ;command setting 8 bit mode
 MOV DX,PORTC
 OUT DX,AL                              
 MOV AL,0FH  ;command setting 8 bit mode
 MOV DX,PORTB
 OUT DX,AL  
 
Write_Chars:
 
 MOV AL,'H'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay4:loop Delay4
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
 MOV CX,00FFH; Delay 
Delay5:loop Delay5 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
                     
 MOV AL,'e'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay6:loop Delay6
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay7:loop Delay7 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL        
 
 MOV AL,'l'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay8:loop Delay8
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay9:loop Delay9 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 

 
 MOV AL,'l'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay10:loop Delay10
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
 MOV CX,00FFH; Delay 
Delay11:loop Delay11
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
 
 MOV AL,'o'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay12:loop Delay12
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
 MOV CX,00FFH; Delay 
Delay13:loop Delay13 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL  
 
 MOV AL,' '
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay14:loop Delay14
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
 MOV CX,00FFH; Delay 
Delay15:loop Delay15 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
 
 MOV AL,'W'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay16:loop Delay16
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay17:loop Delay17
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
 
 MOV AL,'o'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay18:loop Delay18
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay19:loop Delay19 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
 
 MOV AL,'r'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay20:loop Delay20
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay21:loop Delay21 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL   
 
 MOV AL,'l'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay22:loop Delay22
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay23:loop Delay23 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL   
 
 MOV AL,'d'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay24:loop Delay24
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay25:loop Delay25 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL
 MOV CX,0FFFH; A Big Delay 
Delay100:loop Delay100 
 
LCD_Mod_0:
 
 MOV AL,00H  ;command setting 8 bit mode
 MOV DX,PORTC
 OUT DX,AL     
 MOV AL,00H 
 MOV DX,PORTB
 OUT DX,AL 
 
 
Shift_on:
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL    
 MOV AL, 1CH ;put it on shift mode
 MOV DX, PORTA
 OUT DX,AL
 
Shifting: 
 MOV AL,00H  ;each palse shifit the text
 MOV DX,PORTC
 OUT DX,AL
 MOV CX,0FFH; Delay 
 Delay200:loop Delay200
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
 MOV CX,200H; Delay 
 Delay201:loop Delay201
JMP Shifting


CODE ENDS
END
