accessing
options
	^ OrderedCollection
		with:
			{'Username'.
			[ :anObject | anObject user name ]}
		with:
			{'Text size'.
			[ :anObject | anObject text size ]}
		with:
			{'Amount of words'.
			[ :anObject | anObject text substrings size ]}
		with:
			{'Language'.
			[ :anObject | anObject language ]}
		with:
			{'Platform'.
			[ :anObject | anObject source ]}