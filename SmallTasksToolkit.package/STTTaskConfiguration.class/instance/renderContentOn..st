rendering
renderContentOn: html
	html div
		class: 'text-center';
		style: 'margin-top: 45px; margin-bottom: 35px';
		with: [ html heading level3 with: self task name , ' Configuration' ].
	self task renderSettingsOn: html