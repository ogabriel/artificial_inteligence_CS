cidade(vitória,média).
cidade(são_paulo,grande).
cidade(maceió,média).
cidade(rio_de_janeiro, grande).
cidade(embu,pequena).
cidade(cariacica,pequena).
cidade(colatina,pequena).
cidade(salvador,grande).
cidade(curitiba,grande).
cidade(porto_alegre, grande).

capital(vitória).
capital(maceió).
capital(são_paulo).
capital(rio_de_janeiro).
capital(salvador).
capital(curitiba).
capital(porto_alegre).

estado(es,sudeste).
estado(ba,norte).
estado(al,nordeste).
estado(sp,sudeste).
estado(rj,sudeste).
estado(pr,sul).
estado(rs,sul).

pertence(curitiba, pr).
pertence(são_mateus,es).
pertence(salvador,ba).
pertence(vitória,es).
pertence(santos,sp).
pertence(maceió,al).
pertence(são_paulo,sp).
pertence(rio_de_janeiro,rj).
pertence(embu, sp).
pertence(porto_alegre, rs).

cidade_pequena(X) :-
	cidade(X, pequena).

cidade_na_região_norte(X) :-
	pertence(X, E),
	estado(E, norte).

capital_região_sul(X) :-
	capital(X),
	pertence(X, Y),
	estado(Y, sul).

cidade_pequena_região_sudeste(X) :-
	cidade(X, pequena),
	pertence(X, Y),
	estado(Y, sudeste).

estado_com_capital_grande(X) :-
	pertence(C, X),
	capital(C),
	cidade(C, grande).

estado_região_nordeste_com_capital_média(X) :-
	estado(X, nordeste),
	pertence(C, X),
	cidade(C, média),
	capital(C).

cidade_pequena_do_estado(X,Y) :-
	pertence(X, Y),
	cidade(X, pequena).

