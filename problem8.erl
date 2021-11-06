-module(problem8).
-export([solve/0]).

% Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?
solve() ->
    Input = convert_input(get_input()),
    process_input(Input).

get_input() ->
    {ok, Contents} = file:read_file('problem8'),
    binary:replace(Contents, <<"\n">>, <<"">>, [global]).

convert_input(Input) ->
    lists:map(fun(Y) -> list_to_integer([Y]) end, binary_to_list(Input)).

process_input(Input) ->
    process_input(Input, 1, 0).
process_input(Input, Start, MaxProduct) when Start < length(Input) ->
    Product = lists:foldl(fun(X, Product) -> X * Product end, 1, lists:sublist(Input, Start, 13)),
    process_input(Input, Start + 1, lists:max([MaxProduct, Product]));
process_input(_, _, MaxProduct) ->
    MaxProduct.