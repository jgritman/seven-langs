class Square {

	var value = " "
	
	def setX() {
		value = "X"
	}
	
	def setO() {
		value = "O"
	}

	def isBlank():Boolean = {
		value == " "
	}
	
}

class TicTacToeBoard {
	val boardValues = List(List(new Square(), new Square(), new Square()), 
		List(new Square(), new Square(), new Square()), 
		List(new Square(), new Square(), new Square()))
	
	def setX(row: Int, column: Int) {
		boardValues(row)(column).setX()
	}
	
	def setO(row: Int, column: Int) {
		boardValues(row)(column).setO()
	}
	
	def hasWinner():Boolean = {
		for (x <- 0 to 2) {
			if (winningRow(boardValues(x)(0), boardValues(x)(1), boardValues(x)(2))) {
				return true
			}
		}
		for (y <- 0 to 2) {
			if (winningRow(boardValues(0)(y), boardValues(1)(y), boardValues(2)(y))) {
				return true
			}
		}
		if (winningRow(boardValues(0)(0), boardValues(1)(1), boardValues(2)(2))) {
			return true
		}
		if (winningRow(boardValues(0)(2), boardValues(1)(1), boardValues(2)(0))) {
			return true
		}
		false
	}

	def winningRow(square1: Square, square2: Square, square3: Square):Boolean = {
			!square1.isBlank() && square1.value == square2.value && square1.value == square3.value
	}

	def printBoard() {
		for(x <- 0 to 2) {
			for(y <- 0 to 2) {
			    val square = boardValues(x)(y)
				print(square.value)
			}
			println("") 
		}
	}
	
}


val board = new TicTacToeBoard()
board.setX(0,0)
board.setX(0,1)
board.setO(0,2)
board.printBoard()
println("Has winner")
println(board.hasWinner())