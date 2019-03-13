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

dublura([],[]):-!.
dublura([H|T],[H,H|R]):-
    prim(H,2),!,
    dublura(T,R).
dublura([H|T],[H|R]):-
    dublura(T,R).
