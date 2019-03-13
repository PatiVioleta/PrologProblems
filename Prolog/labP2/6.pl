concat(L,[],L):-!.
concat(L,[H1|T1],[H1|R]):-
    concat(L,T1,R).

inloc([],_,_,[]):-!.
inloc([E|T],E,S,I):-!,
    inloc(T,E,S,R),
    concat(R,S,I).
inloc([H|T],E,S,[H|R]):-
    inloc(T,E,S,R).

inlocuieste([],_,[]):-!.
inlocuieste([H|T],S,[H|R]):-
    integer(H),!,
    inlocuieste(T,S,R).
inlocuieste([[H1|T1]|T],S,[X|R]):-
    inloc([H1|T1],H1,S,X),
    inlocuieste(T,S,R).
