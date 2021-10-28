-module(problem6).
-export([solve/0]).

% Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
solve() ->
    square_of_sum(100) - sum_of_squares(100).

sum_of_squares(Limit) ->
    lists:sum([math:pow(X, 2) || X <- lists:seq(1, Limit)]).

square_of_sum(Limit) ->
    math:pow(lists:sum([X || X <- lists:seq(1, Limit)]), 2).