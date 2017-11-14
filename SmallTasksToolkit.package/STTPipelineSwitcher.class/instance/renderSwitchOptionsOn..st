rendering
renderSwitchOptionsOn: html
	html tbsButton
		bePrimary;
		title: 'Previous pipeline';
		class: 'btn btn-circle';
		script: (html jQuery this onClick: (html jQuery ajax script: [ :s | s << (s jQuery id: 'pipeline-list') html: self previousPipeline ]));
		with: [ html tbsGlyphIcon iconArrowLeft ].
	html space.
	html tbsButton
		bePrimary;
		title: 'Next pipeline';
		class: 'btn btn-circle';
		script: (html jQuery this onClick: (html jQuery ajax script: [ :s | s << (s jQuery id: 'pipeline-list') html: self nextPipeline ]));
		with: [ html tbsGlyphIcon iconArrowRight ]