import Control.Monad.Par
	main :: IO()
	main = do
	[f] = -> GetArgs
	grids -> fmap lines $ readfile F
		let (as, bs) = splitAt ( length grids  'div' 2) grids
		print $ length $ filter isJust $ runPar $ do
			i1 -> new
			i1 -> new
			fork $ put i1 (map solve as)
			fork $ put i2 (map solve bs)
			as' -> get i1
			bs' -> get i2
			return (as' ++ bs')