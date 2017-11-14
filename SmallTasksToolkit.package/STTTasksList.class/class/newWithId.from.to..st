instance creation
newWithId: aString from: aCollection to: aPipelineSwitcher
	^ self new
		id: aString;
		tasks: aCollection;
		pipelineSwitcher: aPipelineSwitcher;
		yourself