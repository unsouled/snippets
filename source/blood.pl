blood_type(a, a, type_a).
blood_type(a, o, type_a).
blood_type(o, a, type_a).
blood_type(b, b, type_b).
blood_type(b, o, type_b).
blood_type(o, b, type_b).
blood_type(o, o, type_o).
blood_type(a, b, type_ab).
blood_type(b, a, type_ab).

family(Father, Mother, Baby) :- 
	blood_type(X, Y, Father),
	blood_type(W, Z, Mother),
	blood_type(T, U, Baby),
	T = X, U = W.
