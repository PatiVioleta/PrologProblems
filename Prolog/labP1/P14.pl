nrAparitii(_,[],0):-!.
nrAparitii(E,[E|T],N):-
    %H==E,
    nrAparitii(E,T,N1),
    N is N1+1,!.
nrAparitii(E,[_|T],N):-
    nrAparitii(E,T,N).

sterge(_,[],[]):-!.
sterge(E,[E|T],L):-!,
    sterge(E,T,L).
sterge(E,[H|T],[H|L]):-
    sterge(E,T,L).


multime([],[]).
multime([H1|T1],[H2|T2]):-
    nrAparitii(H1,[H1|T1],N1),
    nrAparitii(H1,[H2|T2],N2),
    N1 =:= N2,
    sterge(H1,[H1|T1],R1),
    sterge(H1,[H2|T2],R2),
    multime(R1,R2).

select([E],1,E):-!.
select([H|_],1,H):-!.
select([_|T],N,R):-
    N1 is N-1,
    select(T,N1,R).
