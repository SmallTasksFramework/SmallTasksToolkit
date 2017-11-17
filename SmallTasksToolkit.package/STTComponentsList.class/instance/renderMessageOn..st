rendering
renderMessageOn: html
	html
		tbsListGroupItem: [ html
				tbsRow: [ html tbsColumn
						mediumSize: 3;
						with: [ html tbsImage
								width: 250;
								url: 'https://media.giphy.com/media/mCRJDo24UvJMA/giphy.gif' ].
					html tbsColumn
						mediumSize: 7;
						with: [ html heading
								level2;
								with: 'Ups!'.
							html heading
								level4;
								with: ' There is no renderizable component to display.' ] ] ]