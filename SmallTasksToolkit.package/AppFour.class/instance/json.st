accessing
json
	| mapper json |
	mapper := (SmallTask prepare: TweetString new) mapper.
	json := (SmallTask reporter: #json) >> 'Tweets'.
	^ mapper |> json