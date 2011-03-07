-module(success_or_error).
-export([print/1]).
-include_lib("eunit/include/eunit.hrl").

print(success) -> io:fwrite("success\n");
print({error, Message}) -> io:fwrite("error: message\n").
