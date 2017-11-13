accessing
finishPipeline
	| newPipeline |
	self pipelinesCollection add: self pipeline.
	newPipeline := self createPipeline previous: self pipeline.
	self pipeline next: newPipeline.
	^ self
		pipeline: newPipeline;
		pipeline