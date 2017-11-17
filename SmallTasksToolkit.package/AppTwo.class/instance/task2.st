accessing
task2
	| storage hashtagsMapper histogramMapper countFilter toStringMapper reporter |
	storage := SmallTask storage.
	hashtagsMapper := (SmallTask prepare: [ :aTweet | aTweet hashtags ]) mapper.
	histogramMapper := SmallTask histogram.
	countFilter := (SmallTask prepare: [ :aHash | storage size % 10 == 0 ]) filter.
	toStringMapper := SmallTask histogramAsString.
	reporter := (SmallTask
		prepare: [ :histogram | 'Tag Cloud para ' , storage size asString , ' tweets:' , String cr , histogram ])
		reporter: #transcript.
	^ self filter |> (storage |> (hashtagsMapper |> (histogramMapper |> (countFilter |> (toStringMapper |> reporter)))))