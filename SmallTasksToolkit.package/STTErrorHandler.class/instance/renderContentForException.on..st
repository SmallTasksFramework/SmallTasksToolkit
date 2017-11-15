actions
renderContentForException: anException on: html
	html heading
		level2;
		"with: anException description."
			with: 'Wait!'.
	html paragraph: 'Your request could not be completed. An exception occurred. You should probably take a look on pipelines!'