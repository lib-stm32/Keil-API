NAME PROCS
     MAIN SEGMENT CODE
     CSEG AT 0
     USING 1
     JMP start
     RSEG MAIN

start:
        MOV SCON, #50H
        MOV TH1, #0FDh
        ORL TMOD, #20h
        SETB TR1

again:
        CLR TI
        MOV A,#D''
        MOV SBUF, 1
        JNB TI, $
        SJMP again
        END