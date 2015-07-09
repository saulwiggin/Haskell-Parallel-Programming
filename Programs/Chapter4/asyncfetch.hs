facebookFetch FacebookState{..} _flags _user bfs =
  AsyncFetch $ \inner -> do
    sem <- newQSem numThreads
    asyncs <- mapM (fetchAsync credentials manager userAccessToken sem) bfs
    inner
    mapM_ wait asyncs
