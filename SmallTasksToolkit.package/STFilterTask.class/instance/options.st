accessing
options
	^ OrderedCollection
		with:
			{'username'.
			[ :anObject | anObject user name ]}
		with:
			{'text size'.
			[ :anObject | anObject text size ]}
		with:
			{'amount of words'.
			[ :anObject | anObject text substrings size ]}
		with:
			{'language'.
			[ :anObject | anObject lang ]}
		with:
			{'platform'.
			[ :anObject | anObject source ]}