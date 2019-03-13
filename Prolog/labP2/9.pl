consec([H1,H2|T],R):-
    H1+1 =\= H2,!,
    f([H1,H2|T],R,0).

consec([H1,H2|T],R):-
    f([H1,H2|T],R,1).

f([E],[E],0):-!.
f([_],[],1):-!.
f([H1,H2|T],[H1|R],0):-
    H1+1=\=H2,!,
    f([H2|T],R,0).

f([H1,H2|T],R,1):-
    H1+1=\=H2,!,
    f([H2|T],R,0).

f([H1,H2|T],R,_):-
    H1+1=:=H2,
    f([H2|T],R,1).


lista([],[]):-!.
lista([H|T],[H|R]):-
    integer(H),!,
    lista(T,R).
lista([H|T],[S|R]):-
    consec(H,S),
    lista(T,R).


