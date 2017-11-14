accessing
pipelineFor: aSTTTaskList
	| task tasks |
	tasks := OrderedCollection newFrom: aSTTTaskList tasks.
	task := nil.
	tasks
		ifNotEmpty: [ :tasksList | 
			task := tasksList removeFirst generateSmallTask.
			tasksList do: [ :each | task |> each generateSmallTask ] ].
	^ task