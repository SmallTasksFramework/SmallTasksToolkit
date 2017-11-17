accessing
filter
	| wordsFilter happyFilter |
	wordsFilter := (SmallTask prepare: [ :aTweet | aTweet text substrings size > 10 ]) filter.
	happyFilter := (SmallTask prepare: [ :aTweet | (SentimentGuru new qualifySentiment: aTweet text) at: 'Alegria' > 0 ] )filter.
	^ wordsFilter |> happyFilter