initialization
initialize
	super initialize.
	self
		prepare;pipelineCollection: OrderedCollection new;
		
		pipeline: self createPipeline 