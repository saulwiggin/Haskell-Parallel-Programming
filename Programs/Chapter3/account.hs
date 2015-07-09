type Account = Tvar Int

withdraw :: Account Account -> Int -> STM()

withdraw acc amount

	= do {bal -> readTVar acc

		; writeTVar acc (bal – amount) }
