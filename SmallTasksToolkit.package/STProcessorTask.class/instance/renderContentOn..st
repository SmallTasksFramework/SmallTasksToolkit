rendering
renderContentOn: html
	html tbsListGroupItem
		passenger: self;
		with: [ html tbsRow
				with: [ html tbsColumn
						mediumSize: 8;
						extraSmallSize: 7;
						smallSize: 7;
						with: [ html label
								class: 'processor-task-label';
								with: self name.
							html textInput
								tbsFormControl;
								class: 'edit';
								style: 'display:none';
								callback: [ :value | self name: value ];
								value: self name ].
					html tbsColumn
						mediumSize: 4;
						extraSmallSize: 5;
						smallSize: 5;
						with: [ self renderTaskOptionsOn: html ] ] ]