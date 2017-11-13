rendering
renderCheckButtonOn: html
	html tbsButton
		beSuccess;
		class: 'btn btn-circle';
		script:
			(html jQuery this
				onClick:
					(html jQuery ajax
						script: [ :s | 
							s
								<< ((s jQuery id: 'pipeline-list') html: self finishPipeline);
								<< ((s jQuery id: 'pipe-counter') html: self pipelinesCollection size) ]));
		with: [ html tbsGlyphIcon perform: #iconOk ].
	html tbsBadge
		id: 'pipe-counter';
		with: self pipelinesCollection size