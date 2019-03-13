candidat([E|_],E).
candidat([_|T],R):-candidat(T,R).

subm_aux(_,K,Col,Col,K):-!.
subm_aux(L,K,C,[H1,H2|Col],P):-candidat(L,E),
		      H1-E=:=H2-H1,
		      P1 is P+1,
		      P1=<K,
                      subm_aux(L,K,C,[E,H1,H2|Col],P1).

subm(L,K,C):-candidat(L,E1),candidat(L,E2),E1<E2,subm_aux(L,K,C,[E1,E2],2).
