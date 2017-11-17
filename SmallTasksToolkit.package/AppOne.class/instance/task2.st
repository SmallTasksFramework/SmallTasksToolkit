accessing
task2
	| mapper fuel |
	mapper := (SmallTask prepare: TweetString new) mapper.
	fuel := (SmallTask reporter: #fuel) >> 'Tweets'.
	^ self filter |> (mapper |> fuel)