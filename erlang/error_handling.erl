-module(error_handling).
-export([test/1]).

test(success) -> io:fwrite("success~n",[]);
test({error,Message}) -> io:fwrite("error : ~s~n",[Message]).