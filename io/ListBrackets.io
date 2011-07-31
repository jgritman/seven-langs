squareBrackets := method(
	l := list()
	call message arguments foreach(arg,
		l append(doMessage(arg))
	)
	l
)

list = [1,2,"3", list(1,2,3)] 
list last last println