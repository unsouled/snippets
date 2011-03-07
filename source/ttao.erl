% Three Times and One. ( 3n + 1 ).
-module(ttao).
-export([ttao/1]).
-include_lib("eunit/include/eunit.hrl").

ttao(N) when N == 1 -> [N];
ttao(N) when N rem 2 == 0 -> [N | ttao(N div 2)];
ttao(N) when not (N rem 2 == 0) -> [N | ttao(3 * N + 1)].

ttao_test_() ->
  [
    ?_assert(ttao(22) =:= [22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1])
  ].
