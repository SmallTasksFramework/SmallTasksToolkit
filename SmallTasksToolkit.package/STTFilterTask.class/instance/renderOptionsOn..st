rendering
renderOptionsOn: html
	html
		tbsFormGroup: [ html label
				for: 'filter-option';
				with: 'Filter option'.
			html select
				class: 'form-control';
				id: 'filter-option';
				list: self options;
				selected: self filterOption;
				enabled: [ :each | each notNil ];
				labels: [ :each | each first ];callback: [ :value | self filterOption: value ];
				onClick: html jQuery ajax serializeThis ]