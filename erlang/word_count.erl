-module(word_count).
-export([count/1]).

count(String) -> count(32, String).

count(_,[]) -> 0;
count(32,[32|Tail]) -> count(32,Tail);
count(32, [Head | Tail]) -> 1 + count(Head,Tail);
count(_,[Head | Tail]) -> count(Head,Tail).

