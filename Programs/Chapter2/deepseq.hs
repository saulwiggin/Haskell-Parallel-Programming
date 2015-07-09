class NFData a where
	  rnf :: a -> ()
	  rnf a = a `seq` ()
	deepseq :: NFData a => a -> b -> a
	($!!) :: (NFData a) => (a -> b) -> a -> b
	instance NFData Int
	instance NFData (a -> b)
	instance NFData a => NFData (Maybe a) where
	    rnf Nothing  = ()
	    rnf (Just x) = rnf x
	instance NFData a => NFData [a] where
	    rnf [] = ()
	    rnf (x:xs) = rnf x `seq` rnf xs