reverse([X], [X]).
reverse([X,Y], [Y,X]).

reverse([Head|Tail], R) :-
	append(reverse(Tail), [Head], R).
