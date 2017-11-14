rendering
renderContentOn: html
	html
		tbsListGroupItem: [ html
				tbsRow: [ html
						tbsColumn: [ html tbsImage
								beCircle;
								height: 75;
								width: 75;
								url: self user profile_image_url ]
						mediumSize: 4.
					html
						tbsColumn: [ html text: self user name , ' - '.
							html anchor
								url: 'https://twitter.com/' , self user screen_name;
								target: '_blank';
								with: [ html text: '@' , self user screen_name ] ]
						mediumSize: 8 ] ]