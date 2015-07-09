
import System.Environment (getArgs)

import Control.Distributed.Process
import Control.Distributed.Process.Node (initRemoteTable)
import Control.Distributed.Process.Backend.SimpleLocalnet
import Control.Monad (forever, mapM_)

main = do
  [host, port] <- getArgs
  
  backend <- initializeBackend host port initRemoteTable
  node    <- newLocalNode backend
  runProcess node $ forever $ do
    findPeers backend >>= mapM_ $ \peer -> nsendRemote peer "echo-server" "hello!"

--We can define a master node and a slave node 
main :: IO ()
main = do
  args <- getArgs

  case args of
    ["master1", host, port] -> do
      backend <- initializeBackend host port initRemoteTable
      startMaster backend (master backend)
    ["slave1", host, port] -> do
      backend <- initializeBackend host port initRemoteTable
      startSlave backend

--where the master node is defined as

master :: Backend -> [NodeId] -> Process ()
master backend slaves = do
  liftIO . putStrLn $ "The Slaves: " ++ show slaves
  terminateAllSlaves backend