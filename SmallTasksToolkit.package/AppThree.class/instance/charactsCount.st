accessing
charactsCount
	| mapper matrix |
	mapper := (SmallTask prepare: [ :aTweet | aTweet substrings ]) mapper.
	matrix := SmallTask matrixCounter.
	^ mapper |> matrix