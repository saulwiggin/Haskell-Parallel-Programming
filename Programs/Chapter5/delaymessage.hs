ChanProcess = do
	sendP ? expect
sendChan ? expect
snedChan sendP “message one”
liftIO $ threaDDelay 10000
sendChan sendP “MESSAGE 2”
liftIO $ threadDelay 10000
sendChan sendP “message three”