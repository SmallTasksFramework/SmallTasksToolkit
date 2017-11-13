rendering
renderSwitchOptionsOn: html
	html tbsButton
		bePrimary;
		class: 'btn btn-circle';
		script: (html jQuery this onClick: (html jQuery ajax script: [ :s | s << (s jQuery id: 'pipeline-list') html: self previousPipeline ]));
		with: [ html tbsGlyphIcon perform: #iconArrowLeft ].
	html space. html tbsButton
		bePrimary;
		class: 'btn btn-circle';
		script: (html jQuery this onClick: (html jQuery ajax script: [ :s | s << (s jQuery id: 'pipeline-list') html: self nextPipeline ]));
		with: [ html tbsGlyphIcon perform: #iconArrowRight ]