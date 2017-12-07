builder
register: app
	"add essential libraries to the application"

	app
		exceptionHandler: STTErrorHandler;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary;
		addLibrary: STTStyleSheets