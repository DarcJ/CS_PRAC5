//Either R1 or R2 are zero, Jump to Zero Loop
@R1
D=M
@ZEROLOOP
D;JEQ
@R2
D=M
@ZEROLOOP
D;JEQ
//If R1 is negative, jump to negLoop
@R1
D=M
@NEGLOOP
D;JLT
//R2 is negative & R1 is positive
@R2
D=M
@NEGATE
D;JLT

//Both are positive
@LOOP
0;JMP

(LOOP)
    @R0
    D=M
    @R2
    D=D+M
    @R0
    M=D
    @R1
    D=M-1
    M=D

    @R1
    D=M
    @SIGNCHECK
    D;JEQ
    
    @LOOP
    0;JMP
 (NEGLOOP)
    @Indicator
    M=1

    @R2
    D=M

    @DOUBLENEG
    D;JLT
    @0
    D=0

    @R1
    D=D-M
    M=D

    @LOOP
    0;JMP
(NEGATE) //Change sign of R2 but set status to 1 to indicate a necessary sign change back to neg
    @Indicator
    M=1

    @0
    D=0

    @R2
    D=D-M
    M=D

    @LOOP
    0;JMP
(DOUBLENEG)
    @Indicator
    M=0

    @0
    D=0

    @R1
    D=D-M  //Converting to R2 positive
    M=D

    @0
    D=0

    @R2 //Converting R1 Pos
    D=D-M
    M=D

    @LOOP
    0;JMP
(ZEROLOOP)
    @R0
    M=0
    @END  
    0;JMP
(SIGNCHECK)
    @Indicator
    D=M
    @SIGNCHANGE
    D;JGT
    @END
    0;JMP
(SIGNCHANGE)
    @0
    D=0
    @R0 //Change sign of R0 to -
    D=D-M
    M=D

    @END
    0;JMP
(END)
    @END
    0;JMP