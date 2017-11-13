rendering
renderSettingsOn: html
	html
		tbsRow: [ html tbsColumn
				mediumSize: 4;
				class: 'text-right';
				with: [ html label
						for: 'transformer';
						with: 'Transformer' ].
			html tbsColumn
				mediumSize: 4;
				class: 'text-left';
				with: [ html select
						class: 'form-control';
						id: 'transformer';
						list: self transformers;
						enabled: [ :each | each notNil ];
						labels: [ :each | each first ];
						selected: self transformer;
						callback: [ :value | self transformer: value ];
						onClick: html jQuery ajax serializeThis ] ]