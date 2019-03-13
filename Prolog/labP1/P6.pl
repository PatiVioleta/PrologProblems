sterge(_,[],[]):-!.
sterge(E,[E|T],L):-!,
    sterge(E,T,L).
sterge(E,[H|T],[H|L]):-
    sterge(E,T,L).

nrAparitii(_,[],0):-!.
nrAparitii(E,[E|T],N):-
    %H==E,
    nrAparitii(E,T,N1),
    N is N1+1,!.
nrAparitii(E,[_|T],N):-
    nrAparitii(E,T,N).


repeta([],[]):-!.
repeta([H|T],R):-
    nrAparitii(H,[H|T],NR),
    NR >1,!,
    sterge(H,[H|T],R1),
    repeta(R1,R).
repeta([H|T],[H|R]):-
    repeta(T,R).

max(L,R):-max_aux(L,R,-32000).

max_aux([],R,R):-!.
max_aux([H|T],R,A):-
    H > A,!,
    A1 is H,
    max_aux(T,R,A1).
max_aux([_|T],R,A):-
    max_aux(T,R,A).

elimMax(L,R):-
    max(L,M),
    sterge(M,L,R).
