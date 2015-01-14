message
parsedImages
	parsedImages isNil
		ifTrue: [ self parseImages ].
	^ parsedImages