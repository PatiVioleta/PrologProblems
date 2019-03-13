invers([],C,C):-!.
invers([H|T],C,R):-
    invers(T,[H|C],R).

inmCifr(L,C,R):-invers(L,[],I),
    inm(I,C,R1,0),
    invers(R1,[],R).

inm([],_,[],0):-!.
inm([],_,[Tr],Tr):-!.
inm([H|T],C,[Aux|R],Tr):-
    Aux is H*C+Tr,
    Aux <10,!,
    inm(T,C,R,0).
inm([H|T],C,[Aux2|R],Tr):-
    Aux is H*C+Tr,
    Aux2 is Aux mod 10,
    T1 is Aux//10,
    inm(T,C,R,T1).

lista(L,R):-lista_aux(L,1,R).

lista_aux([],_,[]):-!.
lista_aux([H|T],I,[H|R]):-
    integer(H),!,
    lista_aux(T,I,R).
lista_aux([H|T],I,[S|R]):-
    inmCifr(H,I,S),
    I1 is I+1,
    lista_aux(T,I1,R).
