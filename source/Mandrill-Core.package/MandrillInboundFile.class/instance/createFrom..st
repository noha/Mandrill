as yet unclassified
createFrom: someMandrillFileData
	fileName := someMandrillFileData at: 'name'.
	mimeType := ZnMimeType fromString: (someMandrillFileData at: 'type').
	base64 := someMandrillFileData at: 'base64' ifAbsent: [ false ].
	content := someMandrillFileData at: 'content'