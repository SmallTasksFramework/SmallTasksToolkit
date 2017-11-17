accessing
transformers
	^ OrderedCollection new
		add:
			{'Counter'.
			CounterTransformer new};
		add:
			{'Average'.
			AverageCounter new};
		add:
			{'Tweet to Text'.
			[ :anObject | [ [ :each | each text ] value: anObject ] ifError: [ anObject ] ]};
		add:
			{'Tweet to Text Substrings'.
			[ :anObject | [ [ :each | each text substrings ] value: anObject ] ifError: [ anObject ] ]};
		add:
			{'Tweet to User'.
			[ :anObject | [ [ :each | each user ] value: anObject ] ifError: [ anObject ] ]};
		add:
			{'Tweet to Seaside Component'.
			TweetComponent new};
		add:
			{'User to Seaside Component'.
			UserComponent new};
		yourself