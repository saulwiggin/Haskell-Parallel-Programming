import Control.Concurrent
import Control.Monad
import System.IO

main = do
	hSetBuffering stdout NoBuffering
	forkIO (replicateM_ 1000000 (putChar 'A'))
	replicateM_ 1000000 (putChar 'B')