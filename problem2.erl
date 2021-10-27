-module(problem2).
-export([solve/0]).

% By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
solve() ->
    fib_sum(1,1,0).

calc(X,Total) when X rem 2 == 0 ->
    Total + X;
calc(_,Total) ->
    Total.

fib_sum(Next,_,Total) when Next > 4000000 ->
    Total;
fib_sum(Next,Prev,Total) ->
    fib_sum(Next+Prev,Next,calc(Next,Total)).

