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
			{'Tweet to String'.
			TweetString new};
		add:
			{'Tweet to Text'.
			[ :anObject | anObject text ]};
		add:
			{'Tweet to Text Substrings'.
			[ :anObject | anObject text substrings ]};
		add:
			{'Tweet to User'.
			[ :anObject | anObject user ]};
		add:
			{'Tweet to Seaside Component'.
			TweetComponent new};
		add:
			{'User to Seaside Component'.
			UserComponent new};
		yourself