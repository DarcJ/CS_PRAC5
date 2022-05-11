    @R1
    D=M //Store R1 in D

    @NEGATIVE
    D;JLT //D < 0 got to 9

    @R0
    M=D //Return D
    @END
    0;JMP //End Program

(NEGATIVE)
    @R0
    M=-D

(END)
    @END
    0;JMP

