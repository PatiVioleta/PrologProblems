sublista(L,M,N,R):-sublista_aux(L,M,N,1,R).

sublista_aux([],_,_,_,[]):-!.
sublista_aux([H|T],M,N,I,[H|R]):-
    I >= M,
    I =< N,!,
    I1 is I+1,
    sublista_aux(T,M,N,I1,R).
sublista_aux([_|T],M,N,I,R):-
    I1 is I+1,
    sublista_aux(T,M,N,I1,R).
