toList :: String -> [Integer]
toList input = read ("[" ++ input ++"]")

main = do
	putStrLn "Enter a list of number (separated by comma):"
	input <-getLine
	print $ sum (toList input)