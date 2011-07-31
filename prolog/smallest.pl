minNum(A,B,A) :- A =< B.
minNum(A,B,B) :- B < A.
smallest([A], A).
smallest([Head|Tail],A) :-  smallest(Tail, B),minNum(Head,B,A).

takeout(X,[X|R],R).
takeout(X,[F|R],[F|S]) :- takeout(X,R,S).
sortList([A],A).
sortList(List,[SortHead|SortTail]) :- smallest(List,SortHead),takeout(SortHead,List,RemainTail),sort(RemainTail,SortTail).