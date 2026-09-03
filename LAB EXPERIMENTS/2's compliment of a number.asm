LDA 2050
MOV B,A

LOOP: MOV A,B
      CPI 02
      JC CHECK
      SUI 02
      MOV B,A
      JMP LOOP

CHECK: MOV A,B
       CPI 00
       JZ EVEN

       MVI A,01
       STA 2051
       HLT

EVEN:  MVI A,00
       STA 2051
       HLT