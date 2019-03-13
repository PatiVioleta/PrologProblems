apare(E,[E|_]):-!.
apare(E,[_|T]):-
    apare(E,T).

dif([],[_|_],[]):-!.
dif([],[],[]):-!.
dif([H|T],L,R):-
    apare(H,L),
    !,
    dif(T,L,R).
dif([H|T],L,[H|R]):-
    dif(T,L,R).

adaugaUnu([],[]):-!.
adaugaUnu([H|T],[H,1|R]):-
    Aux is H mod 2,
    Aux=:=0,!,
    adaugaUnu(T,R).
adaugaUnu([H|T],[H|R]):-
    adaugaUnu(T,R).
