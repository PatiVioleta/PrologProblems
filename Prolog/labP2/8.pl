invers([],C,C):-!.
invers([H|T],C,R):-
    invers(T,[H|C],R).

succesor(L,R):-
    invers(L,[],L1),
    succ(L1,R1,0,1),
    invers(R1,[],R).

succ([],[],0,_):-!.
succ([],[Tr],Tr,_):-!.
succ([H|T],[C|R],Tr,Cat):-
    C is H+Cat+Tr,
    C <10,!,
    succ(T,R,0,0).
succ([H|T],[C|R],Tr,Cat):-
    Aux is H+Cat+Tr,
    C is Aux mod 10,
    Tr1 is Aux//10,
    succ(T,R,Tr1,0).

lista([],[]):-!.
lista([H|T],[H|R]):-
    integer(H),!,
    lista(T,R).
lista([H|T],[S|R]):-
    succesor(H,S),
    lista(T,R).
