accessing
pipelines
	^ ((self pipelinesCollection collect: [ :each | self pipelineFor: each ]) select: [ :each | each notNil ]) 