initialization
initializeWith: aSTTPipelineSwitcher
	self
		initialize;
		pipelineSwitcher: aSTTPipelineSwitcher;
		taskCollection: (STTTaskList newWithId: 'optionTaskList' from: self defaultServicesProvider to: self pipelineSwitcher)