elimina(L,E,R):-elimina_aux(L,E,3,R).

elimina_aux(L,_,0,L):-!.
elimina_aux([],_,_,[]):-!.
elimina_aux([H|T],H,I,R):-
    I1 is I-1,!,
    elimina_aux(T,H,I1,R).
elimina_aux([H|T],E,I,[H|R]):-
    elimina_aux(T,E,I,R).
