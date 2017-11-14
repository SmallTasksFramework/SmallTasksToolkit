rendering
renderCleanButtonOn: html
	html tbsButton
		beDanger;
		title: 'Clean pipelines collection';
		class: 'btn btn-circle';
		script:
			(html jQuery this
				onClick:
					(html jQuery ajax
						script: [ :s | 
							s
								<< ((s jQuery id: 'pipeline-list') html: self resetPipeline);
								<< ((s jQuery id: 'pipe-counter') html: self pipelinesCollection size);
								<< ((s jQuery id: 'taskConfiguration') html: '') ]));
		with: [ html tbsGlyphIcon iconRemove ]