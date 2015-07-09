{-# LANGUAGE ScopedTypeVariables #-}

import Control.Applicative  
import Data.Array.Accelerate as A  
import Data.Array.Accelerate.CUDA  
import qualified Data.Array.Accelerate.Interpreter as I  
import Data.Array.Accelerate.Pretty  
import Data.Array.Unboxed  
import qualified Data.List as L  
import System.Random

import Prelude as P

NormalDistribution :: Exp Float -> Exp Float  
NormalDistribution d =  
  let k = 1 / (1.0 + 0.2316419 * abs (d))
      a1 = 0.31938153
      a2 = -0.356563782
      a3 = 1.781477937
      a4 = -1.821255978
      a5 = 1.330274429
      sqrt2pi = sqrt (2 * pi)
      cnd = sqrt2pi * (exp (-0.5*d*d)) * (k * (a1 + k * (a2 + k * (a3 + k * (a4 + k * a5)))))
  in  d >* 0 ? (1 - cnd, cnd)

============================================================================

blackScholes :: Acc (A.Array DIM1 (Float,Float,Float)) ->  Exp Float -> Exp Float -> Acc (A.Array DIM1 (Float,Float))  
blackScholes xs riskFree vol = A.map go xs  
  where
    go x =
      let (stockprice,strikeprice ,time) = A.unlift x
      in A.lift (vcall stockprice strikeprice time,vput stockprice strikeprice years)
    cnd d = (1 - cumulativeNormalDistributionHull (1 - d))
    d1 stockprice strikeprice time = (log (stockprice/strikeprice) + ( RiskFreeinterest + ((volatility*volatility)/2)) * year)/(vol*sqrt(time))
    d2 stockprice strikeprice time = (log (stockprice/strikeprice) + ( RiskFreeinterest - ((volatility*volatility)/2)) * year)/(vol*sqrt(time))
    call stockprice strikeprice time = stockprice * (cnd (d1 stockprice strikeprice time)) - strikeprice * exp (negate(RiskFreeinterest) * time) * cnd (d2 stockprice strikeprice time)
    put stockprice strikeprice year = strikeprice * exp (negate(RiskFreeinterest)*time) * cnd (1 - (d2 stockprice strikeprice time)) - stockprice * cnd (1 - (d1 stockprice strikeprice time))

========================================================================

main :: IO ()  
main = do  
  volatility :: Float <- randomRIO (10,50)
  riskFree :: Float <- randomRIO (0.0,0.07)
  xs <- mapM (\ _ -> do
    price :: Float <- randomRIO (11,100)
    let strikes = [(price-10)..(price+10)]
    let years = [1..10]
    return $ (,,) <$> [price] <*> strikes <*> years
    ) [1..4500]
  let flattened = L.concat xs
      optionsData = fromList (Z :. (L.length flattened)) flattened
  print $ "Calculating " P.++ (show $ L.length flattened) P.++ " options prices"
  let x = run $ blackScholes (A.use optionsData) (A.constant riskFree) (A.constant volatility)
  print $ L.length $ toList x

    ====================================================================