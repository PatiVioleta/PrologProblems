vale(L):-vale_aux(L,0,0).
vale_aux([_],N,_):-
    N=:=1,!.
vale_aux([E1,E2|T],N,I):-
    N=:=0,
    E1>=E2,!,
    I1 is I+1,
    vale_aux([E2|T],N,I1).
vale_aux([E1,E2|T],N,I):-
    N=:=1,
    E1=<E2,!,
    I1 is I+1,
    vale_aux([E2|T],N,I1).
vale_aux([E1,E2|T],N,I):-
    N=:=0,
    E1=<E2,
    I =\= 0,
    N1 is N+1,
    vale_aux([E2|T],N1,I).

suma(L,R):-suma_aux(L,0,R).
suma_aux([R],_,R):-!.
suma_aux([H1,H2|T],I,R):-
    I =:= 0,!,
    R1 is H1-H2,
    suma_aux([R1|T],1,R).
suma_aux([H1,H2|T],I,R):-
    I =:= 1,
    R1 is H1+H2,
    suma_aux([R1|T],0,R).
