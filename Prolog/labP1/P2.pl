cmmdc(A,A,A):-!.
cmmdc(A,B,R):-
    A<B,!,
    B1 is B-A,
    cmmdc(A,B1,R).
cmmdc(A,B,R):-
    A1 is A-B,
    cmmdc(A1,B,R).

cmmdcElem([E],E):-!.
cmmdcElem([],0):-!.
cmmdcElem([H|T],R):-
    cmmdcElem(T,R1),
    cmmdc(H,R1,R).

adaugaDupa(L,V,R):-adaugaDupaAux(L,1,1,V,R).

adaugaDupaAux([],_,_,_,[]):-!.
adaugaDupaAux([H|T],A,Poz,V,[H,V|R]):-
    A=:=Poz,!,
    A1 is A*2,
    Poz1 is Poz+1,
    adaugaDupaAux(T,A1,Poz1,V,R).
adaugaDupaAux([H|T],A,Poz,V,[H|R]):-
    Poz1 is Poz+1,
    adaugaDupaAux(T,A,Poz1,V,R).
