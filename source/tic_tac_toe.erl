-module(tic_tac_toe).
-export([judge/1]).

% [[e, e, e], [e, e, e], [e, e, e]]

judge([[P, _, _], [P, _, _], [P, _, _]]) when (P =:= o) or (P =:= x) -> P;
judge([[_, P, _], [_, P, _], [_, P, _]]) when (P =:= o) or (P =:= x) -> P;
judge([[_, _, P], [_, _, P], [_, _, P]]) when (P =:= o) or (P =:= x) -> P;
judge([[P, P, P], [_, _, _], [_, _, _]]) when (P =:= o) or (P =:= x) -> P;
judge([[_, _, _], [P, P, P], [_, _, _]]) when (P =:= o) or (P =:= x) -> P;
judge([[_, _, _], [_, _, _], [P, P, P]]) when (P =:= o) or (P =:= x) -> P;
judge([[P, _, _], [_, P, _], [_, _, P]]) when (P =:= o) or (P =:= x) -> P;
judge([[_, _, P], [_, P, _], [P, _, _]]) when (P =:= o) or (P =:= x) -> P;

judge([[e, _, _], [_, _, _], [_, _, _]]) -> cat;
judge([[_, e, _], [_, _, _], [_, _, _]]) -> cat;
judge([[_, _, e], [_, _, _], [_, _, _]]) -> cat;
judge([[_, _, _], [e, _, _], [_, _, _]]) -> cat;
judge([[_, _, _], [_, e, _], [_, _, _]]) -> cat;
judge([[_, _, _], [_, _, e], [_, _, _]]) -> cat;
judge([[_, _, _], [_, _, _], [e, _, _]]) -> cat;
judge([[_, _, _], [_, _, _], [_, e, _]]) -> cat;
judge([[_, _, _], [_, _, _], [_, _, e]]) -> cat.

judge(_) -> no_winner.

