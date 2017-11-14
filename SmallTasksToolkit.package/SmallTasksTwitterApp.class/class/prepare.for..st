instance creation
prepare: aHashtag for: anOrderedCollection
	^ (self prepare: aHashtag)
		tasks: anOrderedCollection;
		yourself