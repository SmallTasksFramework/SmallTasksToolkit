accessing
pipelinesCollection
	PipelinesCollection ifNil: [ PipelinesCollection := OrderedCollection new ].
	^ PipelinesCollection