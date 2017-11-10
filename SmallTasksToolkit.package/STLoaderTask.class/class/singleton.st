singleton
singleton
	instance ifNil: [ instance := super new  ].
	^ instance