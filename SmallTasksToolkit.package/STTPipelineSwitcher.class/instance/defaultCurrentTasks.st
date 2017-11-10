accessing
defaultCurrentTasks
	| tasks |
	tasks := OrderedCollection new.
	^ tasks
		add: (STLoaderTask singleton name: 'Tweets Loader'; tasks: tasks);
		yourself