Main :: PM ()

main = do { (sp1, rp1) <- newChan

	(sp2,rp2) <- newChan

	spawn (child 12 sp1)

	spawn(child 77 sp2)

	 result1 <- receive rp1

	 result2 <- receive rp2

	 print (result1 + result2) }

child :: Int <- Sport Int <- PM()

child n sp = send sp (expensive n)
