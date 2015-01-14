accessing
addDataFrom: eventDataDictionary
	self timeStamp: (eventDataDictionary at: 'ts').
	self type: (eventDataDictionary at: 'type').
	self event: 'sync'.
	self action: (eventDataDictionary at: 'action').
	self reject: (eventDataDictionary at: 'reject')