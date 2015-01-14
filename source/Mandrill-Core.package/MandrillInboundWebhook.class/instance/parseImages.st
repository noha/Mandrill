message
parseImages
	parsedImages := OrderedCollection new.
	self rawImages
		keysAndValuesDo: [ :fileName :mandrillData | parsedImages add: (MandrillInboundFile createFrom: mandrillData) ]