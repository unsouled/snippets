-module(hello).
-export([main/1]).

main([]) -> io:fwrite("hello, world\n").

