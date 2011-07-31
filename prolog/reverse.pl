reverseList([Head|[]], Head).
reverseList([Head|Tail],[Z|Head]) :- reverseList(Tail, Z).