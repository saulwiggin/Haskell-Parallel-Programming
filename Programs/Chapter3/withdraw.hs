withdraw :: TVar Int −> Int −> STM ()

withdraw acc n

  = do { bal <− readTVar acc;

              if bal < n then retry;

              writeTVar acc (bal-n)

            }
