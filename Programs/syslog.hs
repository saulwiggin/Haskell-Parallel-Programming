module Main where

{- A simple HTTP rebounder which sends a HTTP 301 response regardless of the request:

HTTP/1.1 301 Moved Permanently
Location: <url>
Content-Length: 0
 
-} 

import Network              (PortID(PortNumber), withSocketsDo, listenOn, accept)
import Network.Socket       (Socket, close)
import Control.Concurrent   (forkIO)
import Control.Applicative  ((<$>))
import Control.Exception    (bracket)
import System.Posix         (Handler(Ignore), installHandler, sigPIPE)
import System.Environment   (getArgs)
import Data.Maybe           (maybe, listToMaybe)
import System.IO            (Handle, hPutStrLn, hFlush, hClose)

-- configuration
defaultPort = 8080
defaultUrl  = "http://example.com/"

-- main
main :: IO ()
main = withSocketsDo $ do
installHandler sigPIPE Ignore Nothing
url <- maybe defaultUrl id <$> listToMaybe <$> getArgs
bracket 
    (listenOn $ PortNumber defaultPort)
    (close)
    (flip acceptConnection $ redirectConnection url)

redirectConnection :: String -> Handle -> IO ()
redirectConnection url h = hPutStrLn h (constructResponse url) >> hFlush h >> hClose h

-- helpers
constructResponse :: String -> String
constructResponse url = unlines ["HTTP/1.1 301 Moved Permanently"
                                ,"Location: " ++ url
                                ,"Content-Length: 0"]

acceptConnection :: Socket -> (Handle -> IO ()) -> IO ()
acceptConnection socket handler = do
(h,_,_) <- accept socket
    forkIO (handler h)
    acceptConnection socket handler