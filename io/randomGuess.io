randomNumber := Random value( 1,100) floor

standardInput := File standardInput

prevGuess := nil

10 repeat( 
	"Guess" println
	guess := (standardInput readLine) asNumber
	if (guess == randomNumber, "Correct!" println; break)
	if (prevGuess == nil, prevGuess = guess; continue)
	prevDiff := (prevGuess - randomNumber) abs
	currDiff := (guess - randomNumber) abs
	if (prevDiff > currDiff, "Hotter" println, "Colder" println)
)
"The number was " print
randomNumber println
