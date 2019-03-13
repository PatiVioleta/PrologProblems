max(L,X):-max_aux(L,-32000,X).
max_aux([],C,C).
max_aux([H|T],C,X):-
    H>C,!,
    max_aux(T,H,X).
max_aux([_|T],C,X):-
    max_aux(T,C,X).


poz(L,X):-
    max(L,M),
    poz_aux(L,M,1,X).

%list, max, poz,rez
poz_aux([],_,_,[]):-!.
poz_aux([M|T],M,I,[I|R]):-!,
    I1 is I+1,
    poz_aux(T,M,I1,R).
poz_aux([_|T],M,I,R):-
    I1 is I+1,
    poz_aux(T,M,I1,R).

inlocuieste([],[]):-!.
inlocuieste([H|T],[H|R]):-
    integer(H),!,
    inlocuieste(T,R).
inlocuieste([H|T],[X|R]):-
    poz(H,X),
    inlocuieste(T,R).
