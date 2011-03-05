-module(ttao).
-export([ttao/1]).

ttao(N) ->
  if
    N == 1 -> [N];
    N rem 2 == 0 -> [N | ttao(N div 2)];
    not (N rem 2 == 0) -> [N | ttao(3 * N + 1)];
    true -> []
  end.
