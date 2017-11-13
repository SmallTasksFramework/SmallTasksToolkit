rendering
renderSettingsOn: html
	html
		tbsRow: [ html tbsColumn
				mediumSize: 5;
				with: [ self renderOptionsOn: html ].
			html tbsColumn
				mediumSize: 2;
				with: [ self renderOperationsOn: html ].
			html tbsColumn
				mediumSize: 5;
				with: [ self renderValueInputOn: html ] ]