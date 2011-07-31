likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, cheee).

friend(X, Y) :- \+(X = Y), likes(X, Z), likes(Y, Z).
