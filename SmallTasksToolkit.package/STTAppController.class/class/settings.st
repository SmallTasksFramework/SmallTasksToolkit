builder
settings
	Settings ifNil: [ Settings := (Dictionary new) at: #hashtag put: '#defaultHashtag'; yourself  ].
	^ Settings