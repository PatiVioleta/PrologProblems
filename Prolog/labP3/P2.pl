%pb2
eprim(NR):-prim(NR,2),!.
prim(2,_):-!.
prim(NR,NR):-!.
prim(NR,I):-
    NR>2,!,
    Aux is NR mod 2,
    Aux =:= 1,
    Aux2 is NR mod I,
    Aux2 =\= 0,
    I1 is I+1,
    prim(NR,I1).

s(0,_,_,[]):- !.

s(NR,I,_,[]):-
    eprim(I),
    NR1 is NR-I,
    NR1<0,!,fail.

s(NR,I,_,[I|R]):-
    eprim(I),
    NR1 is NR-I,
    NR1>=0,
    I1 is I+1,
    Ant1 is I,
    s(NR1,I1,Ant1,R).

s(NR,I,Ant,R):-
    I1 is I+1,
    s(NR,I1,Ant,R).

suma(NR,R):-s(NR,2,0,R).












