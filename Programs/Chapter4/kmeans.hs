module Data.KMeans (kmeans, kmeansGen)
    where

import Data.List (transpose, sort, groupBy, minimumBy)
import Data.Function (on)
import Data.Ord (comparing)

data WrapType a = WrapType {getVect :: [Double], getVal :: a}
instance Eq (WrapType a) where
   (==) = (==) `on` getVect
instance Ord (WrapType a) where
    compare = comparing getVect

dist a b = sqrt . sum $ zipWith (\x y-> (x-y) ^ 2) a b

centroid points = map (flip (/) l . sum) $ transpose (map getVect points)
    where l = fromIntegral $ length points

closest points point = minimumBy (comparing $ dist point) points

recluster' centroids points = map (map snd) $ groupBy ((==) `on` fst) reclustered
    where reclustered = sort [(closest centroids (getVect a), a) | a <- points]

recluster clusters = recluster' centroids $ concat clusters
    where centroids = map centroid clusters

part :: (Eq a) => Int -> [a] -> [[a]]
part x ys
     | zs' == [] = [zs]
     | otherwise = zs : part x zs'
    where (zs, zs') = splitAt x ys

kmeans'' clusters
    | clusters == clusters' = clusters
    | otherwise             = kmeans'' clusters'
    where clusters' = recluster clusters

kmeans' k points = kmeans'' $ part l points
    where l = (length points + k - 1) `div` k

kmeans :: Int -> [[Double]] -> [[[Double]]]
kmeans = kmeansGen id

kmeansGen :: (a -> [Double]) -> Int -> [a] -> [[a]]
kmeansGen f k points = map (map getVal) . kmeans' k . map (\x -> WrapType (f x) x) $ points
