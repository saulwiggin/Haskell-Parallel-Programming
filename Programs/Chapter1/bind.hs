instance (Monoid w, Monad m) => Monad (WriterT w m) where
	return a = WriterT $ return (a, mempty)
	m >>= f = WriterT $ do
		(a, w) <- runWriterT m
		(b, nw) <- runWriterT (f a)
		return (b, w 'mappend' nw)