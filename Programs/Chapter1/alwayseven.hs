alwaysEven a b = let isEven  x = if even x
						then x
						else x – 1
					in (isEven a, isEven b)