accessing
transformers
	^ OrderedCollection
		with:
			{'counter'.
			CounterTransformer new}
		with:
			{'average'.
			AverageCounter new}
		with:
			{'tweet to string'.
			TweetString new}
		with:
			{'user'.
			[ :anObject | anObject user ]}
		with:
			{'text'.
			[ :anObject | anObject text ]}
		with:
			{'text substrings'.
			[ :anObject | anObject text substrings  ]}