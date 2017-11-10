initialization
initialize
	super initialize.
	self taskCollection: (STTTaskList newWithId: 'optionTaskList' tasks: self defaultServicesProvider)