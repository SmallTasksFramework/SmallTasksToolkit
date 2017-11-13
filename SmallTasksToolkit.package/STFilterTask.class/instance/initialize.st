initialization
initialize
	super initialize.
	self
		filterValue: 'defaultValue';
		filterOperation: self operations first;
		filterOption: self options first