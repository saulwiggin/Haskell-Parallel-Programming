Do

 m1 <- newEmptyMVar

 m2 <- newEmptyMVar

 forkIO $ do

 r <- getURL " http :// www. wikipedia .org/ wiki / edward_viii "

 putMVar m1 r

 forkIO $ do

 r <- getURL " http :// www. wikipedia .org/ wiki / Henry_VIII_of_England "

 putMVar m2 r

 r1 <- takeMVar m1

 r2 <- takeMVar m2

 return (r1 ,r2)