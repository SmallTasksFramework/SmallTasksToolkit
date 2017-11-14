rendering
renderContentOn: html
	html div
		class: 'text-center';
		style: 'margin-top: 45px; margin-bottom: 35px';
		with: [ html heading level3 with: 'App Settings' ].
	html
		tbsFormGroup: [ html
				tbsRow: [ html tbsColumn
						mediumSize: 4;
						class: 'text-right';
						with: [ html label
								for: 'hashtag';
								with: 'Hashtag' ].
					html tbsColumn
						mediumSize: 5;
						with: [ html textInput
								tbsFormControl;
								id: 'hashtag';
								placeholder: 'Enter a hashtag';
								callback: [ :value | self hashtag: value ];
								value: self hashtag;
								onChange: html jQuery ajax serializeThis ] ] ]