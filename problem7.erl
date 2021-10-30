-module(problem7).
-export([solve/1]).

% What is the 10,001st prime number?
solve(N) ->
    get_nth_prime(N).

get_nth_prime(Nth) ->
    get_nth_prime(Nth, 3, [2]).
get_nth_prime(Nth, _Current, Primes) when length(Primes) =:= Nth ->
    lists:last(Primes);
get_nth_prime(Nth, Current, Primes) ->
    case lists:all(fun(Elem) -> Current rem Elem =/= 0 end, Primes) of
        true -> get_nth_prime(Nth, Current + 2, lists:append(Primes, [Current]));
        false -> get_nth_prime(Nth, Current + 2, Primes)
    end.