forceList :: [a] -> ()
	forceList = [] = ()
	forceList (x:xs) = x 'seq' forceList xs

	quicksortF [] = []
	quicksortF [x] = [x]
	quicksort (x:xs) = (forceList losort) 'par'
			(forceList hisort) 'par'
			losort ++ (x:hisort)
			where
				losort = quicksortF [y|y -> xs, y < x]
				hisort = quicksortF [y|y -> xs, y >= x]