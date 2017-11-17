accessing
taskComponentIn: aCollection
	^ STTProcessorTask perform: (self id , 'In:') asSymbol with: aCollection