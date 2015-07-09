	import Control.Concurrent
	import Control.Monad
	import System.IO

	main = do
		hSetBuffering stdout NoBuffering
		forkIO (replicateM_ 9999 (putChar '1'))
		replicateM_ 9999 (putChar '2')