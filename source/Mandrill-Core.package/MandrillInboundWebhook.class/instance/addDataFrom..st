initialize
addDataFrom: eventDataDictionary
	self timeStamp: (eventDataDictionary at: 'ts').
	self event: 'inbound'.
	self message: (eventDataDictionary at: 'msg')