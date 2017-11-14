rendering
renderAddButtonOn: html
	html tbsButton
		beSuccess;
		class: 'btn btn-circle';
		title: 'Add pipeline';
		script:
			(html jQuery this
				onClick:
					(html jQuery ajax
						script: [ :s | 
							s
								<< ((s jQuery id: 'pipeline-list') html: self finishPipeline);
								<< ((s jQuery id: 'pipe-counter') html: self pipelinesCollection size);
								<< ((s jQuery id: 'taskConfiguration') html: '') ]));
		with: [ html tbsGlyphIcon iconPlus ].
	html tbsBadge
		id: 'pipe-counter';
		with: self pipelinesCollection size