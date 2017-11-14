accessing
resetPipeline
	SmallTasksToolkit controller tasks resetPipelinesCollection.
	SmallTasksToolkit controller app resetComponentsCollection. self pipelinesCollection: SmallTasksToolkit controller tasks pipelinesCollection.
	^ self
		pipeline: self createPipeline;
		pipeline