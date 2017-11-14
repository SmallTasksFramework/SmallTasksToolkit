rendering
renderConfigButtonOn: html
	html tbsButton
		title: self name , ' Configuration';
		class: 'config';
		with: [ html tbsGlyphIcon iconTasks ]