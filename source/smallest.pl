smallest([X], X).
smallest([X, Y], X) :- X =< Y.
smallest([X, Y], Y) :- Y =< X.

smallest([Head|Tail], W) :-
	smallest(Tail, S),
	smallest([Head, S], W).
