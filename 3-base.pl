homem(pedro).
homem(marcos).
homem(ze).
mulher(maria).
mulher(joana).
idade(ze,30).
idade(maria,40).
idade(marcos,20).
idade(pedro,25).
idade(joana,28).
gosta(ze,aventura).
gosta(maria,comedia).
gosta(joana,romance).
gosta(marcos,terror).
gosta(marcos,romance).
gosta(pedro,romance).
gosta(maria,romance).
opcao(ze,20,40).
opcao(maria,25,55).
opcao(marcos,30, 80).
opcao(pedro,15,40).
opcao(joana,18,110).

afinidade_filme(X, Y) :-
	gosta(X, F1),
	gosta(Y, F2),
	F1 = F2.

casal(X, Y) :-
	mulher(X),homem(Y);
	homem(X),mulher(Y).

casal_afinidade_filme(X,Y) :-
	casal(X, Y),
	afinidade_filme(X,Y).

afinidade_idade(X,Y) :-
	opcao(X, XA1, XA2),
	idade(X, XRA),
	opcao(Y, YA1, YA2),
	idade(Y, YRA),
	XRA >= YA1, XRA =< YA2,
	YRA >= XA1, YRA =< XA2.

casal_afinidade_idade(X,Y) :-
	casal(X,Y),
	afinidade_idade(X,Y).

casal_total(X,Y) :-
	casal(X,Y),
	afinidade_filme(X,Y),
	afinidade_idade(X,Y).

% a.
?- afinidade_filme(X,Y);

% b.
?- casal(X, Y);

% c.
?- casal_afinidade_filme(X,Y).

% d.
?- casal_afinidade_idade(X,Y).

% e.
?- casal_total(X, Y).

