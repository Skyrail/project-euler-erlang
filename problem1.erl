-module(problem1).
-export([solve/0]).

% Find the sum of all the multiples of 3 or 5 below 1000.
solve() ->
    lists:sum([N || N <- lists:seq(1,999), (N rem 3 =:= 0) or (N rem 5 =:= 0)]).