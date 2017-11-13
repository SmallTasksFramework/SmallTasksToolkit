initialization
initialize
	super initialize.
	self
		prepare;
		pipeline: self createPipeline. self pipelinesCollection inspect