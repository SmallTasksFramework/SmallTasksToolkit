accessing
filters
	| charactsFilter langFilter |
	charactsFilter := (SmallTask prepare: [ :aTweet | (self charactsCount handle: aTweet text) > 77 ]) filter.
	langFilter := (SmallTask prepare: [ :aTweet | aTweet language ~= 'es' ]) filter.
	^ charactsFilter |> langFilter 