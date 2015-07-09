postForm :: Form Post
postForm =
	renderDivs $ Post <$> areq textField “Title” Nothing
	<*> aformM (liftIO getCurrentTime)
	<*> areq textareaField “Content” Nothing
