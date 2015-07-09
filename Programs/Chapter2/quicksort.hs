quicksortN :: (Ord a) => [a] -> [a]
	quickSortN [] = []
	quicksortN [x] = [x]
	quicksortN (x:xs) = losort 'par'
			 hisort 'par'
			losort ++ (x:hisort)
			where
				losort = quicksortN [y|y -> xs, y < x]
				hisort = quicksortN [y|y -> xs, y >= x]