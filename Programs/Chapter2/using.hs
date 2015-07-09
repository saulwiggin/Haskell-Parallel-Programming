using :: Strategy b - > (a -> b) -> [a] -> [b]
	parMap strat f xs = map f xs 'using' parList strat
