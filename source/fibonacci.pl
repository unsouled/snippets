fibonacci(1, 1).
fibonacci(2, 1).

fibonacci(N, V) :-
	M is N - 1,
	fibonacci(M, W),
	K is N - 2,
	fibonacci(K, Y),
	V is Y + W.
