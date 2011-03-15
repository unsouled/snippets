-module(shop).
-export([calc_cart/1]).
-include_lib("eunit/include/eunit.hrl").

calc_cart([]) -> {};
calc_cart(L) -> [calc_item(X) || X <- L].

calc_item({Item, Quantity, Price}) -> {Item, Quantity * Price}.

calc_cart_test_() ->
  [
    ?_assert(calc_cart([{apple, 1, 10}, {banana, 2, 22}]) =:= [{apple, 10}, {banana, 44}]),
    ?_assert(true =:= true)
  ].

calc_item_test_() ->
  [
    ?_assert(calc_item({apple, 1, 10}) =:= {apple, 10}),
    ?_assert(true =:= true)
  ].
