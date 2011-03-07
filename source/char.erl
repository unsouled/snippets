-module(char).
-export([count/1]).

count([]) -> 0;
count([_|Rest]) -> 1 + count(Rest).
