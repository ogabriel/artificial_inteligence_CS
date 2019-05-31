nota(joao, 5.0).
nota(maria, 6.0).
nota(joana, 8.0).
nota(mariana, 9.0).
nota(cleuza, 8.5).
nota(jose, 6.5).
nota(joaquim, 4.5).
nota(mara, -1).
nota(mary, 11).

passou(X) :- nota(X,Y),
	(
	Y >= 7.0, Y =< 10.0 ->
	write('passou')
;	Y >= 5.0, Y < 7.0 ->
	write('recuperacao')
;	Y >= 0.0, Y < 5.0 ->
	write('reprovado')
;fail
	).

