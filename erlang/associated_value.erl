-module(associated_value).
-export([value/2]).

value(Term,List) -> [V || {K,V} <- List, K == Term].

