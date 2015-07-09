mapReduce :: (Serializable i , Serializable k, Serializable m, Serializable r ) )
	MapReduce r i i k m r ! r i ! TaskM [ r ]
mapReduce mr inputs =
	let chunks = (mtChunkify mr) inputs
		in do f pmapResult   mapM (chunk ! newPromise ((mtMapper mr) 				chunk) )
	chunks
	; mapResult   mapM readPromise pmapResult
	; let shuf f led = (mtShuffle mr) (concat mapResult)
	; pres   mapM (mid2 ! newPromise ((mtReducer mr) mid2) ) shuffled
	; mapM readPromise pres g