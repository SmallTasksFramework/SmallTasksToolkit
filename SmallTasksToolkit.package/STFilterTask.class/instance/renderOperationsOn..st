rendering
renderOperationsOn: html
	html
		tbsFormGroup: [ html label
				for: 'filter-operation';
				with: 'Filter operation'.
			html select
				class: 'form-control';
				id: 'filter-operation';
				list: self operations;
				enabled: [ :each | each notNil ];
				labels: [ :each | each ];
				selected: self filterOperation;
				callback: [ :value | self filterOperation: value ];
				onClick: html jQuery ajax serializeThis ]