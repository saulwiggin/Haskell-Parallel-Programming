module Main where
 
import AI.HNN.Net

import AI.HNN.Layer

import AI.HNN.Neuron

import Data.Array.Vector

import Control.Arrow

import Data.List
 
alpha = 0.85 :: Double 

epsilon = 0.0015 :: Double 
 
layer1, layer2 :: [Neuron]
 
layer1 = createSigmoidLayer 4 0.5 [0.5, 0.5, 0.5] 
 
layer2 = createSigmoidLayer 1 0.5 [0.5, 0.4, 0.6, 0.3] 
 
net = [layer1, layer2] 
 
trainednetwork = train alpha epsilon net [([1, 1, 1],[0]), ([1, 0, 1],[1]), ([1, 1, 0],[1]), ([1, 0, 0],[0])] 
 
grid111 = computeNet finalnet [1, 1, 1]
grid101 = computeNet finalnet [1, 0, 1]
grid110 = computeNet finalnet [1, 1, 0]
grid100 = computeNet finalnet [1, 0, 0]
 
main = do
     putStrLn $ "Show neural network : \n" ++ show finalnet
     putStrLn " ---- "
     putStrLn $ "Output for [1, 1, 1] (~ 0): " ++ show grid111
     putStrLn $ "Output for [1, 0, 1] (~ 1): " ++ show grid101
     putStrLn $ "Output for [1, 1, 0] (~ 1): " ++ show grid110
     putStrLn $ "Output for [1, 0, 0] (~ 0): " ++ show grid100