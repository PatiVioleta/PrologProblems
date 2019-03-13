sterge(_,[],[]):-!.
sterge(E,[E|T],L):-!,
    sterge(E,T,L).
sterge(E,[H|T],[H|L]):-
    sterge(E,T,L).

multime([],[]):-!.
multime([H|T],[H|R]):-
    sterge(H,T,R1),
    multime(R1,R).

parimpar([],[],[],0,0):-!.
parimpar([H|T],[H|R],I,NP,NI):-
    Aux is H mod 2,
    Aux =:=0,!,
    parimpar(T,R,I,NP1,NI),
    NP is NP1+1.
parimpar([H|T],P,[H|R],NP,NI):-
    parimpar(T,P,R,NP,NI1),
    NI is NI1+1.

%lista(L,R):-findall(P,parimpar(L,P,I,NP,NI),R).
final(L,[P,I]):-parimpar(L,P,I,NP,NI),write(NP),nl,write(NI),nl.
