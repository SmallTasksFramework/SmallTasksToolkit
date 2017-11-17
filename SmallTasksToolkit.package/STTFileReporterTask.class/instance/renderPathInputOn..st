rendering
renderPathInputOn: html
	html
		tbsFormGroup: [ html label
				class: 'control-label';
				for: 'storage-path';
				with: 'Path'.html textInput
								tbsFormControl;
								id: 'storage-path';
								placeholder: 'Enter a path';
								callback: [ :value | self path: value ];
								value: path;
								onChange: html jQuery ajax serializeThis ]