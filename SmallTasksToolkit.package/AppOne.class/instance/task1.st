accessing
task1
	| mapper reporter |
	mapper := (SmallTask
		prepare: [ :aTweet | aTweet user name ])
		mapper.
	reporter := (SmallTask prepare: [ :name | 'Nombre de usuario: ' , name ])
		reporter: #transcript.
	^ self filter |> (mapper |> reporter)