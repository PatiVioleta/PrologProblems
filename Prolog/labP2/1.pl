aduna_aux([],[],[],0):-!.
aduna_aux([],[],[1],1):-!.
aduna_aux([],[H1|T1],[R1,1|T1],T):-
    R is H1+T,
    R >=10,!,
    R1 is R mod 10.
aduna_aux([],[H1|T1],[R1|T1],T):-
    R1 is H1+T,
    R1<10,!.

aduna_aux([H1|T1],[],[R1,1|T1],T):-
    R is H1+T,
    R >=10,!,
    R1 is R mod 10.
aduna_aux([H1|T1],[],[R1|T1],T):-
    R1 is H1+T,
    R1<10,!.

aduna_aux([H1|T1],[H2|T2],[H3|T3],T):-
    H3 is H1+H2+T,
    H3<10,!,
    aduna_aux(T1,T2,T3,0).
aduna_aux([H1|T1],[H2|T2],[R|T3],T):-
    H3 is H1+H2+T,
    R is H3 mod 10,
    aduna_aux(T1,T2,T3,1).

aduna(L,Q,R):-
    inversare(L,R1),
    inversare(Q,R2),
    aduna_aux(R1,R2,R3,0),
    inversare(R3,R).

inversare_aux([],C,C):-!.
inversare_aux([H|T],C,R):-
    inversare_aux(T,[H|C],R).

inversare(L,R):-inversare_aux(L,[],R).

suma(L,R):-suma_aux(L,[0],R).

suma_aux([],C,C):-!.
suma_aux([H|T],C,R):-
    integer(H),!,
    suma_aux(T,C,R).
suma_aux([H|T],C,R):-
    aduna(C,H,Rez),
    suma_aux(T,Rez,R).













