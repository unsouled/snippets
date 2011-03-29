smallest([X], X).
smallest([X, Y], X) :- X =< Y.
smallest([X, Y], Y) :- Y =< X.

smallest([Head|Tail], W) :-
	smallest(Tail, S),
	smallest([Head, S], W).

sort(L, S) :- 
	smallest(L,LS),
	smallest(S,SS),
	LS = SS,
	L = [L_head | L_tail],
	S = [S_head | S_tail],
	S_head = LS,
	sort(S_tail , S_tail).
