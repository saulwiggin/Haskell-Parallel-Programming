maybePrint :: IORef Bool -> IORef Bool -> IO ()

 maybePrint myRef yourRef = do

   writeIORef myRef True

   yourVal <- readIORef yourRef

   unless yourVal $ putStrLn "critical"

 main :: IO ()

 main = do

   r1 <- newIORef False

   r2 <- newIORef False

   forkIO $ maybePrint r1 r2

   forkIO $ maybePrint r2 r1

   threadDelay 999999