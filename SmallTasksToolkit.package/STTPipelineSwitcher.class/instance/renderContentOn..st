rendering
renderContentOn: html
	html
		tbsRow: [ html tbsColumn
				mediumSize: 6;
				smallSize: 6;
				extraSmallSize: 6;
				class: 'text-right';
				with: [ html heading level3 with: 'Pipeline' ].
			html tbsColumn
				mediumSize: 6;
				smallSize: 6;
				extraSmallSize: 6;
				class: 'finish-pipeline';
				with: [ self renderAppConfigButtonOn: html.
					html space.
					self renderSwitchOptionsOn: html.
					html space.
					self renderCheckButtonOn: html ] ].
	html div
		id: 'pipeline-list';
		with: [ self pipeline renderOn: html ]