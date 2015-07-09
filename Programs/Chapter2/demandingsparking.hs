	demanding, sparking :: a -> () -> a
	demanding = flip sequential
	sparking = flip par
