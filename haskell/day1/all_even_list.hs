module Main where
	allEven :: [Integer] -> [Integer]
	allEven  x = [y | y <- x, even y]