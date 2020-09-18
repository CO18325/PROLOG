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
    move(N,X,Y,Z).


move(1,X,Y,_) :-
    write('Move the TOP disk from '),
    write(X),
    write(' to '),
    write(Y),
    nl,
    nl.

move(N,X,Y,Z) :-
    N>1,
    M is N-1,
    move(M,X,Z,Y),
    move(1,X,Y,_),
    move(M,Z,Y,X).

