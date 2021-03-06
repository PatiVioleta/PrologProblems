apare([E|_],E):-!.
apare([_|T],E):-apare(T,E).

candidat([E|_],E).
candidat([_|T],R):-candidat(T,R).

ar_aux(_,K,Col,Col,K):-!.
ar_aux(L,K,C,[H|Col],P):-candidat(L,E),
		      P1 is P+1,
		      P1=<K,
		      \+apare([H|Col],E),
                      ar_aux(L,K,C,[E,H|Col],P1).

ar(L,K,C):-candidat(L,E),ar_aux(L,K,C,[E],1).
