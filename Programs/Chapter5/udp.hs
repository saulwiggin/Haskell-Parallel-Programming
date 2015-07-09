
module Main where
import Network.Socket
import Control.Exception
port = "5000"
main = withSocketsDo $ bracket getSocket sClose talk
        where getSocket = do
                (serveraddr:_) <- getAddrInfo Nothing (Just "127.0.0.1") (Just port)
                s <- socket (addrFamily serveraddr) Datagram defaultProtocol
                connect s (addrAddress serveraddr) >> return s
              talk s = do
                send s "Hello, world!"
                recv s 1024 >>= \msg -> putStrLn $ "Received " ++ msg