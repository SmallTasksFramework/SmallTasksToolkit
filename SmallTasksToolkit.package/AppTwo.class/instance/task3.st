accessing
task3
	| traductor mapper ston |
	traductor := SmallTask translator: 'es'.
	mapper := (SmallTask prepare: TweetString new) mapper.
	ston := (SmallTask reporter: #ston) >> 'Tweets'.
	^ self filter |> (traductor |> (mapper |> ston))