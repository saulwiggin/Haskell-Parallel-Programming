import Control.Monad
 import qualified Data.Text as T
 import D3JS

 test :: Int -> IO ()
 test n = T.writeFile "generated.js" $ reify (box "#div1" (300,300) >>= bars n 300 (Data1D [100,20,80,60,120]))