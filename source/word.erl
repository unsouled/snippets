-module(word).
-export([count/1]).
-include_lib("eunit/include/eunit.hrl").

count([]) -> 0;
count([Char|Rest]) -> 1 + count(Rest).

count_test() ->
    [
        ?_assert(count("This is 4 words") =:= 4)
    ].
