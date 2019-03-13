%pb15
s(0,_,_,[]):- !.

s(NR,I,_,[]):-
    NR1 is NR-I,
    NR1<0,!,fail.

s(NR,I,_,R):-
    NR1 is NR-I,
    NR1>=0,
    I1 is I+1,
    Ant1 is I,
    s(NR1,I1,Ant1,R)

suma(NR,R):-s(NR,1,0,R).












