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

@R1
D=M
@R2
A=M
(LOOP)
    M=M+D
    A=A-1
    @END
    A;JLE
    @LOOP
(END)
    @END
    0;JMP
