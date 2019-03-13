sterge(_,[],[]):-!.
sterge(E,[E|T],L):-!,
    sterge(E,T,L).
sterge(E,[H|T],[H|L]):-
    sterge(E,T,L).


nrAparitii(_,[],0):-!.
nrAparitii(E,[E|T],N):-
    %H==E,
    nrAparitii(E,T,N1),
    N is N1+1,!.
nrAparitii(E,[_|T],N):-
    nrAparitii(E,T,N).


perechi([],[]):-!.
perechi([H|T],[[H,Nr]|R]):-
    %write(H),
    %write(' apare de '),
    nrAparitii(H,[H|T],Nr),
    %write(Nr),
    sterge(H,[H|T],Li),
    %write(Li),
    perechi(Li,R).
