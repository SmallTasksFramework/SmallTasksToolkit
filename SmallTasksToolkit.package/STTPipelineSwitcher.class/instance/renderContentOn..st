rendering
renderContentOn: html
	html
		tbsRow: [ html tbsColumn
				mediumSize: 9;
				smallSize: 9;
				extraSmallSize: 9;
				with: [ html heading level3 with: 'Pipeline' ].
			html tbsColumn
				mediumSize: 3;
				smallSize: 3;
				extraSmallSize: 3;
				class: 'finish-pipeline';
				with: [ html tbsButton
						bePrimary;
						class: 'btn btn-circle';
						script:
							(html jQuery this
								onClick:
									(html jQuery ajax
										script: [ :s | 
											s
												<< ((s jQuery id: 'pipeline-list') html: self finishPipeline);
												<< ((s jQuery id: 'pipe-counter') html: self pipelineCollection size) ]));
						with: [ html tbsGlyphIcon perform: #iconCheck ].
					html tbsBadge
						id: 'pipe-counter';
						with: self pipelineCollection size ] ]. html div
				id: 'pipeline-list';
				with: [ self pipeline renderOn: html ]