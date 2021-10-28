-module(problem4).
-export([solve/0]).

% Find the largest palindrome made from the product of two 3-digit numbers.
solve() ->
    lists:max([X*Y || X <- lists:seq(100,999), Y <- lists:seq(100,999), is_palindrome(X*Y)]).

is_palindrome(N) when N rem 10 =:= 0 -> false;
is_palindrome(N) ->
    N =:= list_to_integer(lists:reverse(integer_to_list(N))).