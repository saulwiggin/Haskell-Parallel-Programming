
 import Control . Concurrent
 import Control . Monad
 import System .IO

 main = do

 forkIO ( forever ( putChar 'a '))
 forkIO ( forever ( putChar 'b '))
 threadDelay (10^4)