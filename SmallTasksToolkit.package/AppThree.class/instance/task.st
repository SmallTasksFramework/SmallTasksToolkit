accessing
task
	| translate zip mapper |
	translate := SmallTask translator: 'es'.
	mapper := (SmallTask prepare: TweetString new) mapper.
	zip := (SmallTask reporter: #zip) >> 'Tweets'.
	^ self filters |> (translate |> (mapper |> zip))