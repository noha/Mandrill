message
parsedAttachments
	parsedAttachments isNil
		ifTrue: [ self parseAttachments ].
	^ parsedAttachments