rendering
renderSettingsOn: html
	html
		tbsRow: [ html tbsColumn mediumSize: 6; with: [ self renderPathInputOn: html ].
			html tbsColumn mediumSize: 6; with:[ self renderFileExtensionsOn: html ] ]