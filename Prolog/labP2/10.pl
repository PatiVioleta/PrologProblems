adauga(L,E,R):-adaug(L,1,E,R,1).

adaug([],_,_,[],_):-!.
adaug([H|T],Un,E,[H,E|R],Cont):-
    Un =:= 1,!,
    Un1 is Cont*2,
    adaug(T,Un1,E,R,Un1).
adaug([H|T],Un,E,[H|R],Cont):-
    Un1 is Un-1,
    adaug(T,Un1,E,R,Cont).
