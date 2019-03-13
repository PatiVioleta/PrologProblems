inter([],[],[]):-!.
inter([],L,L):-!.
inter(L,[],L):-!.
inter([H1|T1],[H1|T2],[H1|R]):-!,
    inter(T1,T2,R).

inter([H1|T1],[H2|T2],[H1|R]):-
    H1 <H2,!,
    inter(T1,[H2|T2],R).
inter([H1|T1],[H2|T2],[H2|R]):-
    H1 >H2,!,
    inter([H1|T1],T2,R).

f(L,R):-interList(L,[],R).

interList([],C,C):-!.
interList([H|T],C,R):-
    integer(H),!,
    interList(T,C,R).
interList([H|T],C,R):-
    inter(H,C,I),
    interList(T,I,R).

