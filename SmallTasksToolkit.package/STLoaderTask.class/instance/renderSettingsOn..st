rendering
renderSettingsOn: html
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
								value: hashtag;
								script: (html jQuery this onChange: (html jQuery ajax serialize: (html jQuery expression: (JSStream on: 'event.target')))) ] ] ]