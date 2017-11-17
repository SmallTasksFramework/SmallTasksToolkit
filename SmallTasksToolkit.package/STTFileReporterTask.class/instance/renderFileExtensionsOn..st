rendering
renderFileExtensionsOn: html
	html
		tbsFormGroup: [ html label
				for: 'file-reporter-extension';
				with: 'File Extension'.
			html select
				class: 'form-control';
				id: 'file-reporter-extension';
				list: self fileExtensions;
				enabled: [ :each | each notNil ];
				labels: [ :each | each ];
				selected: self fileExtension;
				callback: [ :value | self fileExtension: value ];
				onClick: html jQuery ajax serializeThis ]