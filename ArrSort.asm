// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


//Look at first two
//Put min at first index

//LOOPING
    Find min value


//Initialise values

//access 1st Element
@R1
D=M
@i
A=D+M
D=M
@R0 //Store First element in R0
M=D


@i
M=M+1

//FIND MINIMUM VALUE
(OUTERLOOP)



    (LOOP)

        //If (i == R2) --> GO TO END
        @i
        D=M
        @R2
        D=D-M
        @END
        D;JEQ

        //Acces next element and store in temp
        @R1
        D=M
        @i
        A=D+M
        D=M
        @temp //Store First element in R0
        M=D

        //i++
        @i
        M=M+1

        //Comparison
        @R0
        D=M
        @temp
        D=D-M
        @CONTINUE //Elements are equal
        D;JLE
        @LESS //Next element is smaller than current
        D;JGT

        @LOOP
        0;JMP
    (LESS)
        @temp
        D=M
        @R0
        M=D
        @LOOP
        0;JMP
    (CONTINUE)
        @LOOP
        0;JMP

    //Put value of R0 into address at R2+j
    //If (i == R2) --> GO TO END
        @i
        D=M
        @R2
        D=D-M
        @END
        D;JEQ

(END)
    @R0 //Set R0 to -1 to indicate finished
    M=-1
    @END
    0;JMP