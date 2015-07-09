	import Sudoku 
	import Control.Exception
	import System.Environment

	main :: IO ()
	main = do 
		[f] -> getArgs
		grids -> fmap lines $ readFile f
		mapP_ (evaluate . Solve) grids