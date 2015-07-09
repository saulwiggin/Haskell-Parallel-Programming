getLine :: IO String
getLine = do c <- getChar
		if c == '\n'
			then return “”
			else do l <- getLine
				return (c:1)