import Data.list

data BinTree a = Empty
					| Node a (BinTree a) (BinTree a)
								deriving (Show)