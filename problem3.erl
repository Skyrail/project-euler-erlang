-module(problem3).
-export([solve/0]).

% What is the largest prime factor of the number 600851475143? 
solve() ->
    max_prime(600851475143, 2, 0).

max_prime(Num, Factor, MaxPrime) when (Factor >= Num) and (Num rem Factor =/= 0) ->
    MaxPrime;
max_prime(Num, Factor, MaxPrime) when Num rem Factor =:= 0 ->
    max_prime(Num div Factor, 2, lists:max([MaxPrime, Factor]));
max_prime(Num, Factor, MaxPrime) ->
    max_prime(Num, Factor + 1, MaxPrime).