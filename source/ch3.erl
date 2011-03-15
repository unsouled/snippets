-module(ch3).
-behaviour(gen_server).

-export([code_change/3]).
-export([handle_call/3, handle_cast/2, handle_info/2]).
-export([init/1, terminate/2]).

code_change(_, _, _) -> 1.
handle_call(_, _, _) -> 1.
handle_cast(_, _) -> 1.
handle_info(_, _) -> 1.
init(_) -> 1.
terminate(_, _) -> 1.

 %-export([start_link/0]).
 %-export([alloc/0, free/1]).
 %-export([init/1, handle_call/3, handle_cast/2]).
 %
 %start_link() ->
 %    gen_server:start_link({local, ch3}, ch3, [], []).
 %alloc() ->
 %    gen_server:call(ch3, alloc).
 %free(Ch) ->
 %    gen_server:cast(ch3, {free, Ch}).
 %init(_Args) ->
 %    {ok, channels()}.
 %handle_call(alloc, _From, Chs) ->
 %    {Ch, Chs2} = alloc(Chs),
 %    {reply, Ch, Chs2}.
 %handle_cast({free, Ch}, Chs) ->
 %    Chs2 = free(Ch, Chs),
 %    {noreply, Chs2}.
