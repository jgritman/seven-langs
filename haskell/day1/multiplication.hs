module Main where
	multiplication_table :: [Integer] -> [(Integer, Integer, Integer)]
	multiplication_table x = [(a,b, a*b) | a <- x, b <-x]