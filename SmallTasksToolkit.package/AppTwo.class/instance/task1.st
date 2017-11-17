accessing
task1
	| geoFilter counter reporter |
	geoFilter := (SmallTask prepare: [ :aTweet | aTweet coordinatePoint notNil ]) filter.
	counter := SmallTask counter.
	reporter := (SmallTask prepare: [ :count | String cr , '		Cantidad de tweet con coordenadas: ' , count asString ]) reporter: #transcript.
	^ self filter |> (geoFilter |> (counter |> reporter))