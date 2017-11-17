accessing
task2
	| avg filter storage |
	avg := SmallTask average.
	filter := (SmallTask
		prepare: [ :aTweet | (self charactsCounter handle: aTweet text) > (avg handle: (self charactsCounter handle: aTweet text)) ])
		filter.
	storage := SmallTask storage.
	^ self filter |> (filter |> storage)