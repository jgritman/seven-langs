-module(count_to_ten).
-export([do_count/0]).

do_count(10) -> io:fwrite("~w~n", [10]);
do_count(N) -> io:fwrite("~w~n",[N]), do_count(N+1).
do_count() -> do_count(1).