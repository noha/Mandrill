as yet unclassified
addDataFrom: eventDataDictionary
	self timeStamp: (eventDataDictionary at: 'ts').
	self event: (eventDataDictionary at: 'event').
	self message: (eventDataDictionary at: 'msg').
	self url: (eventDataDictionary at: 'url').
	self ip: (eventDataDictionary at: 'ip').
	self userAgent: (eventDataDictionary at: 'user_agent').
	self userAgentParsed: (eventDataDictionary at: 'user_agent_parsed').
	self location: (eventDataDictionary at: 'location').
	self messageId: (eventDataDictionary at: '_id')