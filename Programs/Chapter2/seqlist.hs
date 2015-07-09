seqList :: Strategy a -> Strategy [a]
	seqList strat [] = ()
	seqList strat (x:xs) = strat x 'seq' (seqList strat xs)