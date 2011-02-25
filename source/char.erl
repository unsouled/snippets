-module(char).
-export([count/1]).

count([]) -> 0;
count([Char|Rest]) -> 1 + count(Rest).
