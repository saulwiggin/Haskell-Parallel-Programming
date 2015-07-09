  <- forkProcess mynode $ do
    itself <- getSelfPid
    send itself "message"
    message <- expect :: Process String
    liftIO $ putStrLn message
  return ()