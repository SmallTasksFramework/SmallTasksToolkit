initialization
initialize
	super initialize.
	self
		pipelineCollection: OrderedCollection new;
		pipeline: self createPipeline 