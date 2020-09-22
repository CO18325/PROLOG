/*
    PROLOG PROJECT
    TOPIC : TOWER OF HANOI
    BY : INDERPREET SINGH (C018325)
*/



/* 
    main FUNCTION
    CALLED BY THE USER 
    USING THE SWI-PROLOG TERMINAL
    DISPLAYS THE ENTRY MESSAGE
    PASSES THE PARAMETERS GIVEN BY USER
    TO THE MOVE FUNCTION
*/

main(N,X,Y,Z) :-
    nl,
    nl,
    write('-------------WELCOME-------------'),
    nl,
    write('---------TOWER OF HANOI----------'),
    nl,
    write('----INDERPREET SINGH(CO18325)----'),
    nl,
    nl,
    nl,
    /* CALL THE MOVE FUNCTION */
    /*
        PARAMETERS PASSED ARE :
            N : NO. OF DISKS IN THE INTIAL STATE / PEG
            X : INTITAL STATE / PEG 
            Y : NTERMEDIATE STATE / PEG
            Z : FINAL STATE / PEG 
    */
    move(N,X,Y,Z).


/*
    move FUNCTION WHEN ONLY ONE DISK IS LEFT IN THE PEG
    X : STATE IN WHICH THE DISK IS LEFT
    Y : STATE WHERE THE DISK NEEDS TO BE PLACED
*/

move(1,X,Y,_) :-
    write('MOVE THE TOP DISK FROM:'),
    nl,
    write(X),
    nl,
    write('PLACE IT AT'),
    nl,
    write(Y),
    nl,
    nl.


/*
    move FUNCTION WHEN FOR N DISKS
    IT IS RECURSIVE FUNCTION
*/

move(N,X,Y,Z) :-
    N>1,
    M is N-1,
    move(M,X,Z,Y),
    move(1,X,Y,_),
    move(M,Z,Y,X).

