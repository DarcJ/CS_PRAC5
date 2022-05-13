// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

//Get First number
//Add to itself
//Reduce second number by 1
//Check if second number is equal to zero
//If second number equal to zero --> End program 
//Else keep looping.


@R2
D=M
@temp
M=D
(LOOP)
    @R1
    D=M
    @R0
    M=M+D
    @temp
    D=M-1
    M=D
    @END
    D;JEQ
    @LOOP
    0;JMP
(END)
    @END
    0;JMP