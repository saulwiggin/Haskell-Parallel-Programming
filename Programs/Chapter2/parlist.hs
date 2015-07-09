	parList :: Strategy a -> Strategy [a] 
	parList strat [] = ()
	parList strat (x:xs) = strat x 'par' (parList strat xs)