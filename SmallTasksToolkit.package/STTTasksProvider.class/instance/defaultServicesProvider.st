accessing
defaultServicesProvider
	| tasks |
	tasks := OrderedCollection new.
	^ tasks
		add:
			(STTTaskOption new
				name: 'Filter Task';
				id: 'filter');
		add:
			(STTTaskOption new
				name: 'Mapper Task';
				id: 'mapper');
		add:
			(STTTaskOption new
				name: 'Translator Task';
				id: 'translator');
		add:
			(STTTaskOption new
				name: 'File Reporter Task';
				id: 'reporter');
		add:
			(STTTaskOption new
				name: 'Rendering Task';
				id: 'rendering');
		yourself 