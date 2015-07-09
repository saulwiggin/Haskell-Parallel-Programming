Foo l = let x = head 1
	xs = tail 1
	in if even x
	then foo (n+x) xs
	else foo n n xs