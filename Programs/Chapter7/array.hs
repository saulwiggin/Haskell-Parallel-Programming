	data Array r sh e
		data Z = Z

	data Tail :. head = tail :. head
	
		type DIM0 = Z

	type DIM1 = DIM0 :. Int

	type DIM2 = DIM1 :. Int