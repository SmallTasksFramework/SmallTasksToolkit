instance creation
new
	Instance ifNil: [ Instance := self basicNew initialize ].
	^ Instance