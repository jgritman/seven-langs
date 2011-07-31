Matrix := Object clone
Matrix matrix := nil
Matrix dim := method(x, y, 
	matrix = list()
	for(i, 1, x, matrix append(list() setSize(y)))
	matrix
)
Matrix set := method(x, y, value, 
	(matrix at(x)) atPut(y, value)
)
Matrix get := method(x, y, (matrix at(x)) at(y))

matrix := Matrix clone
matrix dim(2,3)
matrix matrix println
matrix set(1, 1, "a")
matrix matrix println

matrix get(1, 1) println
matrix set(1, 2, "b")
matrix get(1, 2) println
matrix matrix println

Matrix transpose := method(new_matrix, 
    new_matrix dim((matrix at(0)) size, matrix size)
	matrix foreach(index_x, x_val, x_val foreach(index_y, y_val, new_matrix set(index_y, index_x, y_val)))
)

new_matrix := Matrix clone
matrix transpose(new_matrix)
new_matrix matrix println

Matrix write := method(filename, 
	file := File clone open(filename) write(matrix serialized())
	file close
)

Matrix read := method(filename,
	matrix := doFile(filename)
)

new_matrix write("test.txt")
matrix read("test.txt")
matrix matrix println