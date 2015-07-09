dotp :: (Num a, PA a) => [:a:] -> [:a:] -> a

dotp xs ys = sumP (zipWithP (*) xs ys)