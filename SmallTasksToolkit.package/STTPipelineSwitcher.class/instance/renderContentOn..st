rendering
renderContentOn: html
	html
		tbsRow: [ html tbsColumn
				mediumSize: 6;
				smallSize: 5;
				extraSmallSize: 5;
				class: 'text-right';
				with: [ html heading level3 with: 'Pipeline' ].
			html tbsColumn
				mediumSize: 6;
				smallSize: 7;
				extraSmallSize: 7;
				class: 'finish-pipeline text-right';
				with: [ self renderAppConfigButtonOn: html.
					html space.
					self renderSwitchOptionsOn: html.
					html space.
					self renderCleanButtonOn: html.
					html space.
					self renderAddButtonOn: html ] ].
	html div
		id: 'pipeline-list';
		with: [ self pipeline renderOn: html ]