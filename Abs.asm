    @R1
    D=M //Store R1 in D

    @NEGATIVE
    D;JGL //D < 0 got to 9

    @R0
    M=D //Return D
    @End
    0;JMP //End Program

(NEGATIVE)
    @R0
    M=-D
    
(END)
    @END
    0;JMP

