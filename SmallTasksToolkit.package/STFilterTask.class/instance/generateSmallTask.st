accessing
generateSmallTask
	^ (SmallTask
		prepare: [ :anObject | (self filterOption second value: anObject) perform: self filterOperation asSymbol with: self filterValue ])
		filter