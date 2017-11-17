accessing
charactsCounter
	| mapper matrixCounter |
	mapper := (SmallTask prepare: [ :aTweet | aTweet substrings ]) mapper.
	matrixCounter := SmallTask matrixCounter.
	^ mapper |> matrixCounter