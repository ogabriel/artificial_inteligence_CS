come(urso, peixe).
come(urso, tigre).
come(peixe, peixinho).
come(peixinho, alga).
come(peixe, alga).
come(urso, raposa).
come(urso, guaxinim).
come(peixe, alga).
come(peixe, minhoca).
come(lince, veado).
come(planta_carnívora, mosca).
come(planta_carnívora, mosca).
come(veado, planta_carnívora).

animal(urso).
animal(peixe).
animal(peixinho).
animal(raposa).
animal(veado).
animal(minhoca).
animal(lince).
animal(coelho).
animal(guaxinim).

planta(planta_carnívora).
planta(alga).
planta(grama).

carnívoro(X):-come(X,Y), animal(Y).

herbívoro(X):-come(X,Y),planta(Y),\+carnívoro(X).

predador(X):-carnívoro(X),animal(X).

presa(X):-come(Y,X),predador(Y),animal(X).

caçado(X):-presa(X).

pertence_a_cadeia(X,Y):-come(Y,X).
pertence_a_cadeia(X,Y):-come(Z,X),pertence_a_cadeia(Z,Y).

% 1.
?- come(peixe, minhoca).
?- come(peixe, peixinho).

% 2.
?- planta(X).

% 3.
?- come(urso, X).

$ 4.
?- come(X, peixe).

% 5.
?- predador(X).

% 6.
?- predador(X),presa(X).

% 7.
?- presa(X), herbívoro(X).

% 8.
?- pertence_a_cadeia(X, urso).

% 9.
?- pertence_a_cadeia(X, urso), pertence_a_cadeia(X, planta).

% 10.
?- pertence_a_cadeia(minhoca, X).
