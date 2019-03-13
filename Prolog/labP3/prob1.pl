candidat([E|_],E).
candidat([_|T],R):-candidat(T,R).

subm_aux(_,Col,Col).
subm_aux(L,C,[H|Col]):-candidat(L,E),
		      E<H,
                      subm_aux(L,C,[E|[H|Col]]).

subm(L,C):-candidat(L,E),subm_aux(L,C,[E]).
