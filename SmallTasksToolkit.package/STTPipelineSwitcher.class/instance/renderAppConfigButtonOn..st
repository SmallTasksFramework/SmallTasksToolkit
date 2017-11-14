rendering
renderAppConfigButtonOn: html
	html tbsButton
		beInfo;
		title: 'App settings';
		class: 'btn btn-circle';
		script: (html jQuery this onClick: (html jQuery ajax script: [ :s | s << (s jQuery id: 'taskConfiguration') html: STTTwitterSettings singleton ]));
		with: [ html tbsGlyphIcon iconCog ]