rendering
renderValueInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'filter-value';
				with: 'Filter Value'.
			html textInput
				tbsFormControl;
				id: 'filter-value';
				placeholder: 'Insert a value';
				callback: [ :value | self filterValue: value ];
				value: self filterValue;
				onChange: html jQuery ajax serializeThis ]