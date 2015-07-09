	divConq :: (a -> b) 
	-> a 
	-> (a -> Bool) 
	-> (b -> b -> b) 
	-> (a -> Maybe (a,a)) 
	-> divConq f arg threshold conquer divide = go arg
	where
	go arg =
	case divide arg of
	Nothing -> f arg
	Just (l0,r0) -> conquer l1 r1 ‘using‘ strat
	where
	l1 = go l0
	r1 = go r0
	strat x = do r l1; r r1; return x
	where r | threshold arg = rseq
	| otherwise = rpar