do
	ax<-async(friendsOfx)
	ay<-async(friendsOfy)
	fx<-wait ax
	fy<-wait ay
	return (length (intersect fx fy))
