-module(roman_roullete).
-export([solve/2]).
-include_lib("eunit/include/eunit.hrl").

solve(Size, Skip) -> solve_recur(lists:seq(0, Size - 1), 0, Skip).

solve_recur([], _, _) -> false;
solve_recur([P], _, _) -> P;
solve_recur(Positions, Cursor, Skip) ->
  Size = length(Positions),
  C = (Cursor + Skip) rem Size,
  solve_recur(lists:sublist(Positions, C) ++ lists:sublist(Positions, C + 2, Size),
    C, Skip).

range(0) -> [];
range(N) -> range(N - 1) ++ [N - 1].

solve_test_() ->
  [
    ?_assert(solve(1, 1) =:= 0),
    ?_assert(solve(2, 0) =:= 1),
    ?_assert(solve(2, 1) =:= 0),
    ?_assert(solve(40, 3) =:= 6),
    ?_assert(true)
  ].

range_test_() ->
  [
    ?_assert(range(0) =:= []),
    ?_assert(range(1) =:= [0]),
    ?_assert(range(2) =:= [0, 1]),
    ?_assert(true)
  ].

solve_recur_test_() ->
  [
    ?_assert(solve_recur(range(2), 0, 0) =:= 1),
    ?_assert(solve_recur(range(2), 0, 1) =:= 0),
    ?_assert(solve_recur(range(40), 0, 3) =:= 6),
    ?_assert(true)
  ].
