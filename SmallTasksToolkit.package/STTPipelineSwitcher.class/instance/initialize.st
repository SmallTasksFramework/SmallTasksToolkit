initialization
initialize
	super initialize.
	self
		prepare;
		pipeline: (SmallTasksToolkit controller tasks pipelinesCollection ifNotEmpty: [ :each | each first ] ifEmpty: [ self createPipeline  ])