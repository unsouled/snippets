-module(sort).
% -export([qsort/1]).
-compile([export_all]).
-include_lib("eunit/include/eunit.hrl").

qsort([]) -> [];
qsort([Pivot | Rest]) ->
  qsort([ X || X <- Rest, X < Pivot ]) ++ [Pivot] ++ qsort([ X || X <- Rest, X >= Pivot]).

loop() ->
  receive
    quit -> io:format('quit\n');
    {quick, List} -> io:format("~p", qsort(List)), loop()
  end.

qsort_test_() ->
  [
    ?_assert(qsort([2,6,4,1]) =:= [1,2,4,6]),
    ?_assert(qsort([9,10,4,11,444]) =:= [4,9,10,11,444]),
    ?_assert(true)
  ].
