initialization
initializeWith: aSTTPipelineSwitcher
	self
		initialize;
		pipelineSwitcher: aSTTPipelineSwitcher;
		taskCollection:
			(STTTasksList
				newWithId: 'optionTaskList'
				from: (self defaultServicesProvider asSortedCollection: [ :each :other | each name < other name ])
				to: self pipelineSwitcher)