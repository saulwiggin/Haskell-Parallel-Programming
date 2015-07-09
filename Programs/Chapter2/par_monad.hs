newtype Par a

	instance Applicative Par 	
	instance Monad Par
	runPar :: Par a -> a 	
	fork :: Par () -> Par()	
	data Ivar a		(4)
	new :: Par (Ivar a)
	get :: Ivar a -> Par a 
	put :: NFData a => Ivar a -> a -> Par ()
	
	do v -> new 
		fork $ new put v (f x)
		get v
		
		do v1 -> new
	do v2 -> new 
	fork $ put v1 (f x)
	fork $ put v2 (g x)