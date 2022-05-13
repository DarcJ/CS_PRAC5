// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

//Get First element of array (R1)
//Get Second element of array (R1+1)
//Find which is smallest 
    //If R1 is smallest
        //R1-R2 is negative
    //If R2 is smallest
        //R1-R2 is positive
    //IF Equal
        //R1 - R2 is zero
//Store in R0
//R2 -1
//Compare R0 to Ri
//Store smaller number in R0
//Loop until R2 is 0.

//Initialise values
@temp
M=0
@i
M=0

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
(CONTINUE)
    @LOOP
    0;JMP
(END)
    @END
    0;JMP