accessing
filter
	| wordsFilter langFilter |
	wordsFilter := (SmallTask
		prepare: [ :aTweet | aTweet text substrings size > 15 ])
		filter.
	langFilter := (SmallTask
		prepare: [ :aTweet | aTweet language == 'en' ])
		filter.
	^ wordsFilter |> langFilter