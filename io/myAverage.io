List myAverage := method (
	if(size == 0, 0,
		foreach(v, if(v type != Number type, Exception raise("non numeric value in list")))
		average
	) 
)

(list(1, 2, 4) myAverage) println
list(3, 4, 0) myAverage println
list() myAverage println
list("c") myAverage