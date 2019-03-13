
lista(A,B,[A|R]):-
    A =< B,!,
    A1 is A+1,
    lista(A1,B,R).
lista(_,_,[]).
