-module(key_val).
-export([list_value/2]).
-include_lib("eunit/include/eunit.hrl").

key({K, _}) -> K.

list_value(List, Key) -> 
  [{_, Desc}] = lists:filter(fun(X) -> key(X) == Key end, List),
  Desc.

list_value_test_() ->
  [
    ?_assert(list_value([{erlang, "a functional language"}, {ruby, "an OO language"}], erlang) =:= "a functional language"),
    ?_assert(list_value([{erlang, "a functional language"}, {ruby, "an OO language"}], ruby) =:= "an OO language"),
    ?_assert(true =:= true)
  ].
