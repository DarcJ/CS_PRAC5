// Calculates the absolute value of R1 and stores the result in R0.
// (R0, R1 refer to RAM[0], and RAM[1], respectively.)
@R1
D=M
@9
D;JGL
@R0
M=D
@11
0;JMP
@R0
M = -D
@11
0;JMP

