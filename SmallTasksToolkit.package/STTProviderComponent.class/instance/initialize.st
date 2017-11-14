initialization
initialize
	super initialize.
	self
		pipelinesCollection: SmallTasksToolkit  controller tasks pipelinesCollection;
		pipeline: OrderedCollection new