
	foldP :: (Shape sh, Source r a, Elt a, Unbox a, Monad m)
	=> (a -> a -> a)
	-> a
	-> Array r (sh :. Int) a
	-> m (Array U sh a)