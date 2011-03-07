-module(number).
-export([count_to/1]).
-include_lib("eunit/include/eunit.hrl").

count_to(0) -> [];
count_to(N) when N > 0 -> lists:append([count_to(N - 1), [N]]).

count_to_test_() ->
  [
    ?_assert(count_to(1) =:= [1]),
    ?_assert(count_to(10) =:= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  ].
