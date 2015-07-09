smvm :: SM -> [:Float:] -> [:Float:]

smvm m v = [:sumP [:x * (v !: i) | (i,x) <- col:] | col <- m:]