module Main where
	states = [("Alabama", ["Tennessee", "Mississippi", "Georgia", "Florida"]), ("Tennessee", ["Mississippi", "Georgia", "Alabama"]), ("Mississippi", ["Alabama", "Tennessee"]), ("Georgia",["Tennessee", "Alabama", "Florida"]), ("Florida",["Georgia", "Alabama"])]
	colors = ["red", "green", "blue"]

	color x = map_color([], states)

	map_color :: ([([Char], [Char])], [([Char], [[Char]])]) -> [([Char], [Char])]
	map_color(colored_states,[]) = colored_states
	map_color(colored_states,remain_head:remain_tail) = map_color(find_color(remain_head,colored_states):colored_states, remain_tail)

	find_color :: (([Char], [[Char]]), [([Char],[Char])]) -> ([Char],[Char])
	find_color ((state, borders), colored_states) = (state, head [c | c <- colors, c /= find_match(c, nieghbor_colors(colored_states, borders))])

	nieghbor_colors(colored_states, neighbors) = [c | (state, c) <- colored_states, state == find_match(state, neighbors)]

	find_match :: ([Char],[[Char]]) -> [Char]
	find_match(item,[]) = ""
	find_match(item, (h:t)) = if item == h then item else find_match(item, t) 

	