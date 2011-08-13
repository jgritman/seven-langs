module Main where
	rev :: [a] -> [a]
	rev(x) = rev_accum(x, [])

	rev_accum :: ([a],[a]) -> [a]
	rev_accum ([],a) = a
	rev_accum ((h:t), a) = rev_accum(t, h:a)