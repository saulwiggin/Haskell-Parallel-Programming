module Main where

import Control.Concurrent ( threadDelay )

import Data.Binary

import Data.Typeable

import Control.Distributed.Process

import Control.Distributed.Process.Node

import Network.Transport.TCP

-- Serializable (= Binary + Typeable)

data Ping = Ping deriving (Typeable)

instance Binary Ping where

    put Ping = putWord8 0

    get      = do { getWord8; return Ping }

server :: ReceivePort Ping -> Process ()

server rPing = do

    Ping <- receiveChan rPing

    liftIO $ putStrLn "Got a ping!"

client :: SendPort Ping -> Process ()

client sPing =

    sendChan sPing Ping

ignition :: Process ()

ignition = do

    -- start the server

    sPing <- spawnChannelLocal server

    -- start the client

    spawnLocal $ client sPing

    liftIO $ threadDelay 100000 -- wait a while

main :: IO ()

main = do

    Right transport <- createTransport "127.0.0.1" "8080"

                            defaultTCPParameters

    node <- newLocalNode transport initRemoteTable

    runProcess node ignition