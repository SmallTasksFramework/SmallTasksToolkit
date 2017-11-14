rendering
renderContentOn: html
	html
		tbsListGroupItem: [ html
				tbsRow: [ html tbsColumn
						mediumSize: 1;
						smallSize: 3;
						extraSmallSize: 3;
						with: [ html tbsImage
								beCircle;
								height: 55;
								width: 55;
								url: self tweet user profile_image_url ].
					html tbsColumn
						mediumSize: 2;
						smallSize: 9;
						extraSmallSize: 9;
						with: [ html anchor
								url: 'https://twitter.com/' , self tweet user screen_name;
								target: '_blank';
								with: [ html text: '@' , self tweet user screen_name ] ].
					html tbsColumn
						mediumSize: 9;
						smallSize: 12;
						extraSmallSize: 12;
						with: [ html text: self tweet text ] ] ]