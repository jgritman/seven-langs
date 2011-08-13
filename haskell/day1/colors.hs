module Main where
	colors :: [[Char]] -> [([Char],[Char])]
	colors x = [(a,b) | a <- x, b <- x, a < b]