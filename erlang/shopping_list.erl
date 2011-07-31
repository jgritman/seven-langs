-module(shopping_list).
-export([total_price/1]).

total_price(List) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].