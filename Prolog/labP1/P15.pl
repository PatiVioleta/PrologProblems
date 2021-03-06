par([]).
par([_,_|T]):-
    par(T).

minim(L,R):-minim_aux(L,32000,R).
minim_aux([],R,R):-!.
minim_aux([H|T],I,R):-
    H < I,!,
    I1 is H,
    minim_aux(T,I1,R).
minim_aux([_|T],I,R):-
    minim_aux(T,I,R).

elim(L,R):-
    minim(L,M),
    elim_aux(L,M,R).

elim_aux([],_,[]):-!.
elim_aux([H|T],H,T):-!.
elim_aux([H|T],M,[H|R]):-
    elim_aux(T,M,R).
