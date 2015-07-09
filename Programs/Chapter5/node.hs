main :: IO ()
main = do
  Right t <- createTransport "127.0.0.1" "66667" defaultTCPParameters
  mynode <- newLocalNode t initRemoteTable
