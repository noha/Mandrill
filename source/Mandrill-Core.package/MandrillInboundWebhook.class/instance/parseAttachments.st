message
parseAttachments
	parsedAttachments := OrderedCollection new.
	self rawAttachments
		keysAndValuesDo: [ :fileName :mandrillData | parsedAttachments add: (MandrillInboundFile createFrom: mandrillData) ]