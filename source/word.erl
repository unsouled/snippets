-module(word).
-export([strlen/1]).

strlen([]) -> 0;
strlen([Char|Rest]) -> 1 + strlen(Rest).
