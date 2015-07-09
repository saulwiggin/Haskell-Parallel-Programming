do
	m1 <-newEmptyMVar
	m2 <-newEmptyMVar
	forkIO(friendsOfx >>= putMVarm1)
	forkIO(friendsOfy >>= putMVarm2)
	fx<-takeMVar	m1
	fy<-takeMVar m2
	return (length (intersect fx fy))