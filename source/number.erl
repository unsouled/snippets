-module(number).
-export([count_to/1]).

count_to(0) -> [];
count_to(N) -> [N | count(N - 1)].
