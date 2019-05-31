% os fatos devem ser todos em relação a pai e mãe
% exemplo: pai(Willian, George_Alexander_Louis), pai(Charles, Willian)

avó(X,Y) :-
	mulher(X),
	mãe(Z, Y),
	mãe(X,Z).

avô(X, Y) :-
	homem(X),
	pai(Z, Y),
	pai(X,Z).

neto(X, Y) :-
	homem(X),
	avô(Y, X);avó(Y,X).

neta(X, Y) :-
	mulher(X),
	avô(Y, X);avó(Y,X).

irmão(X, Y) :-
	homem(X),
	pai(P, X), mãe(M, X),
	pai(P1, Y), mãe(M1, Y),
	P1 = P, M1 = M.

irmã(X, Y) :-
	mulher(X),
	pai(P, X), mãe(M, X),
	pai(P1, Y), mãe(M1, Y),
	P1 = P, M1 = M.

tia(X, Y) :-
	mulher(X),
	avô(A, X), avó(A1, X),
	pai(P, Y), mãe(P1, Y),
	A = P, A1 = P1.

tio(X, Y) :-
	homem(X),
	avô(A, X), avó(A1, X),
	pai(P, Y), mãe(P1, Y),
	A = P, A1 = P1.

primo(X, Y) :-
	homem(X),
	pai(P, X), mãe(M, X),
	pai(P1, Y), mãe(M1, Y),
	irmão(P, M1); irmão(P, P1);
	irmão(M, M1); irmão(P, P1);
	irmão(P1, M); irmão(P, P);
	irmão(M1, M); irmão(P, P).

prima(X, Y) :-
	mulher(X),
	pai(P, X), mãe(M, X),
	pai(P1, Y), mãe(M1, Y),
	irmão(P, M1); irmão(P, P1);
	irmão(M, M1); irmão(P, P1);
	irmão(P1, M); irmão(P, P);
	irmão(M1, M); irmão(P, P).

sobrinha(X, Y) :-
	mulher(X),
	tia(Y, X); tio(Y, X).

sobrinho(X, Y) :-
	homem(X),
	tia(Y, X); tio(Y, X).




