-module(problem5).
-export([solve/0]).

% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
solve() ->
    calc(20).

is_divisible(Num, Factor) when (Num rem Factor =:= 0) and (Factor < 20) ->
    is_divisible(Num, Factor + 1);
is_divisible(Num, Factor) when (Num rem Factor =:= 0) and (Factor =:= 20) ->
    true;
is_divisible(Num, Factor) when (Num rem Factor =/= 0) ->
    false.

calc(Num) ->
    case is_divisible(Num, 11) of
        true -> Num;
        false -> calc(Num + 20)
    end.