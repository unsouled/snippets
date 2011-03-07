-module(word).
-export([count/1]).
-include_lib("eunit/include/eunit.hrl").

is_whitespace(32) -> 1;
is_whitespace(" ") -> 1;
is_whitespace(_) -> 0.

count([]) -> 1;
count([Char|Rest]) -> is_whitespace(Char) + count(Rest).

count_test_() ->
    [
      ?_assert(is_whitespace("A") =:= 0),
      ?_assert(is_whitespace(32) =:= 1),
      ?_assert(count("1word") =:= 1),
      ?_assert(count("This is 4 words") =:= 4)
    ].
