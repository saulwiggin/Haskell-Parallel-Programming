
vecMul :: [:Float:] -> [:Float:] -> Float

vecMul v1 v2 = sumP [: f1*f2 | f1 <- v1 | f2 <- v2 :]